#!/usr/bin/env python3

import sys
import os
import glob
import re
from os.path import expanduser
import argparse
from collections import namedtuple


#######################################################################################################################
if sys.version_info < (3, 6, 0):
    sys.stderr.write("must be python 3.6+ for %s\n" % __file__)
    sys.exit()


HOME = expanduser('~')


def unexpanduser(p):
    return p.replace(HOME, '~')


class cache_once:  # zero args fn cache decorator
    def __init__(self, fn):
        self.res = fn()

    def __call__(self):
        return self.res


def fltr(fn, seq):
    return filter(fn, seq) if fn else seq


def pseq(seq, title='----------'):
    print(title)
    for x in seq:
        print('   ', x)


#######################################################################################################################
# def get_out_filename():
#     return f'{HOME}/assembled.sh'


def all_msk_list(filter_fn=None):
    rt = '~/Documents'
    roots = [
        # 'dotfiles/rc/**/*.sh',
        'dot/rc*/*.sh',
        'dot-private/rc*/*.sh',
    ]
    res = [os.path.join(rt, p) for p in roots]
    res = fltr(filter_fn, res)
    return res


#######################################################################################################################
def glob_single(msk, filter_fn=None):
    msk = expanduser(msk)
    res = glob.glob(msk)
    res = fltr(filter_fn, res)
    res = sorted(res)
    return res


def glob_all(msk_seq, filter_fn=None):
    for msk in msk_seq:
        yield from glob_single(msk, filter_fn)


#######################################################################################################################
# def filter_by_os_not_name_factory(not_name):
#     if not_name:
#         r = r'\b' + not_name + r'\b'
#         r = re.compile(r)
#         return lambda p: not r.search(p)
#     else:
#         return lambda p: True


def detect_platform():
    if 'linux' in sys.platform:
        return 'linux'
    if 'darwin' in sys.platform:
        return 'mac'
    return 'err'


def skip_regexp_by_platform(platform):
    if platform == 'auto':
        platform = detect_platform()
    skip_regs = dict(
        linux=re.compile(r'\bmac\b'),
        mac=re.compile(r'\blinux\b'),
    )
    return skip_regs.get(platform)


class Filterer:
    def __init__(self, platform, verbose_level):
        assert verbose_level in (0, 1, 2)
        self.platform = platform
        self.verbose_level = verbose_level
        self.regexp = skip_regexp_by_platform(platform)

    def __str__(self):
        p, v, r = self.platform, self.verbose_level, self.regexp
        r = r.pattern if r else r
        return f'<{p}; {v}; {r}>'

    def print(self, type_str, s, is_accepted):
        verbose_level = self.verbose_level
        # s = unexpanduser(s)
        if verbose_level == 1 and is_accepted:
            print(s)
        if verbose_level == 2:
            s2 = ('SKIP', 'OK')[is_accepted]
            s = f'{type_str} {s}: {s2}'
            print(s)

    def filter_x(self, s, type_str):
        is_accepted = not bool(self.regexp.search(s))
        self.print(type_str, s, is_accepted)
        return is_accepted

    def filter_msk(self, msk):
        return self.filter_x(msk, 'GLOB')

    def filter_file(self, file):
        return self.filter_x(file, 'FILE')


#######################################################################################################################
def arg_parser_factory():
    p = argparse.ArgumentParser(description='Dot files assembler')
    p.add_argument('--out-file', type=str, default='~/assembled.sh', help='Output file')
    p.add_argument("--mode", default="build", choices=["build", "ls", "cat", "check", "ls-not-checked"], help="default: %(default)s")
    p.add_argument("--platform", default="auto", choices=["auto", "all", "linux", "server", "mac", "windows"], help="default: %(default)s")
    return p


@cache_once
def args_once():
    p = arg_parser_factory()
    # a = ["--platform=all", "--mode=ls"]
    # a = ["--platform=linux", "--mode=ls"]
    # a = ["--platform=linux", "--mode=cat"]
    # a = ["--platform=linux"]
    # a = ["--platform=mac", "--mode=ls"]
    # a = ["--platform=linux", "--mode=cat"]
    a = None
    args = p.parse_args(a)
    return args


#######################################################################################################################
# Env = namedtuple('Env', 'mode verbose_level out_file filter_msk_fn filter_file_fn')


HR = '#' + '-'*77


def print_file(filename, out_file):
    print(HR, file=out_file)
    print(f'# {filename}\n', file=out_file)
    for ln in open(filename).readlines():
        print(ln.rstrip(), file=out_file)


#######################################################################################################################
def main():
    args = args_once()
    print(args)

    # env = Env(args.mode, None, sys.stdout, None, None)  # f.filter_msk, f.filter_file)
    # print(env)

    filterer = Filterer(args.platform, 2)
    print(filterer)


    msk_list = all_msk_list(filterer.filter_msk)

    files_seq = glob_all(msk_list, filterer.filter_file)

    mode = args.mode
    if mode == 'ls':
        filterer.verbose_level = 1
        list(files_seq)
    elif mode == 'cat':
        filterer.verbose_level = 0
        for path in files_seq:
            print_file(path, sys.stdout)
    elif mode == 'build':
        filterer.verbose_level = 2
        out_name = expanduser(args.out_file)
        with open(out_name, 'w', encoding='utf8') as out_file:
            for path in files_seq:
                print_file(path, out_file)

    print(args)

#######################################################################################################################
if __name__ == '__main__':
    main()
