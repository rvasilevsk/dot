#!/usr/bin/env python3

import sys
import os
import glob
import re
from os.path import expanduser


#######################################################################################################################
if sys.version_info < (3, 6, 0):
    sys.stderr.write("must be python 3.6+ for %s\n" % __file__)
    sys.exit()


#######################################################################################################################
def get_out_filename():
    return '%s/assembled.sh' % expanduser('~')


# def rc_path():
#     if '/' in __file__:
#         pos = __file__.rindex('/')
#         return __file__[:pos]
#     else:
#         return '.'


def uniq_list(l):
  uniq = []
  for x in l:
    if x not in uniq:
      uniq.append(x)
  return uniq


def add(*args):
    print('ADD', *args)


def skip(*args):
    print('SKIP', *args)


def filter_dirs(fn, dirs):
    print(repr(fn))
    for p in dirs:
        if fn(p):
            add(p)
            yield p
        else:
            skip(p)


class Glob:
    def __init__(self):
        self.path_msk = None
        self.filter_fn = None
        self.set_skip_os(None)

    def set_msk(self, *path_msk_pieces):
        self.path_msk = os.path.join(*path_msk_pieces)
        self.path_msk = expanduser(self.path_msk)

    def set_skip_os(self, name):
        self.filter_fn = filter_by_os_name(name)

    def path_seq(self):
        msk = self.path_msk
        if self.filter_fn(msk):
            add('DIR', msk)
            res = glob.glob(msk)
            # res = filter(self.filter_fn, res)
            res = filter_dirs(self.filter_fn, res)
            res = sorted(res)
            return res
        else:
            skip('DIR', msk)
            return []


def rc_msk_seq():
    rt = '~/Documents'
    roots = [
        # 'dotfiles/rc/**/*.sh',
        'dot/rc*/*.sh',
        'dot-private/rc*/*.sh',
    ]
    return [os.path.join(rt, p) for p in roots]


def rc_files_all():
    g = Glob()
    for p in rc_msk_seq():
        g.set_msk(p)
        yield from g.path_seq()


def rc_files_auto():
    g = Glob()
    g.set_skip_os('mac')
    for p in rc_msk_seq():
        yield from g.path_seq()


def main():
    print(sys.version)
    print(sys.platform)
    # print(rc_path())
    out_filename = get_out_filename()
    print(rc_msk_seq())
    print(out_filename)
    # res = rc_files_all()
    res = rc_files_auto()
    res = list(res)
    # for p in res:
    #     print(p)
    # print(res)
    # out = open(out_filename, mode="w", encoding="utf8")
    # lines = list(lines_generator())  # write only is read ok
    # for ln in lines:
    #     out.write(ln)
    #     out.write('\n')
    # summary = finish_summary(out_filename, len(lines))
    # summary = '\n'.join(summary)
    # print(summary)

#######################################################################################################################


# def fltr(path, skip_os):
#         filename = os.path.basename(path)
#         if '.%s.' % skip_os in filename:
#             return False
#         if filename.startswith('%s.' % skip_os):
#             return False
#         return True


# def rc_sub_files(sub_dir):
#     msk = rc_path()+f'/{sub_dir}/*.sh'
#     print('\n', msk)
#     names = glob.glob(msk)
#     return names


# def rc_files_by_hand():
#     home = rc_path()+'/'
#     names = [
#         'env.sh',
#         'alias.sh',
#         'locate.sh',
#         'wine.sh',

#         'akb.sh',

#         'apt.linux.sh',
#         'brew.mac.sh',

#         'cd.sh',

#         'ytdl.sh',
#         'mm.sh',

#         'behlog.sh',
#         'org.sh',
#         'sublime.sh',
#         'du.sh',
#     ]
#     names = (home+x for x in names)
#     return names


# def rc_files_iter():
#     yield from rc_sub_files('rc0')
#     yield from rc_sub_files('rc.server')
#     yield from rc_sub_files('rc.cd')
#     yield from rc_sub_files('rc1')
#     yield from rc_sub_files('rc.private')
#     # yield from rc_files_by_hand()


# def rc_files_all():
#     names = uniq_list(rc_files_iter())
#     return names


# print(rc_files_all())
# sys.exit()


# def rc_files_linux():
#     files = rc_files_all()
#     skip_os = 'mac'
#     filtered = [f for f in files if fltr(f, skip_os)]
#     return filtered


# def rc_files_mac():
#     files = rc_files_all()
#     skip_os = 'linux'
#     filtered = [f for f in files if fltr(f, skip_os)]
#     return filtered


# def rc_files_auto_detect():
#     res = []
#     if 'linux' in sys.platform:
#         print('LINUX')
#         res = rc_files_linux()
#     if 'darwin' in sys.platform:
#         print('MAC')
#         res = rc_files_mac()
#     return list(res)


def read_file(filename):
    lines = []

    try:
        lines = open(filename).readlines()
        lines = list(lines)
        status = '%s; lines: %d; skipped: 0' % (filename, len(lines))
    except Exception as e:
        status = 'ERR %s: %s' % (e, filename)

    print(status)
    lines = [ln.rstrip() for ln in lines]
    yield '# '+status
    yield from lines


def lines_generator():
    for f in rc_files_auto_detect():
        yield from read_file(f)


def finish_summary(assembled_filename, lines_writed):
    yield 'writed %d lines to %s' % (lines_writed, assembled_filename)
    yield 'install: source "%s" >> ~/.bash_profile'% assembled_filename
    yield 'install: source "%s" >> ~/.profile'% assembled_filename
    yield 'edit: vim ~/.profile ~/.bash_profile'


# def main():
#     print(sys.version)
#     print(sys.platform)
#     print(rc_path())
#     out_filename = get_out_filename()
#     print(out_filename)
#     out = open(out_filename, mode="w", encoding="utf8")
#     lines = list(lines_generator())  # write only is read ok
#     for ln in lines:
#         out.write(ln)
#         out.write('\n')
#     summary = finish_summary(out_filename, len(lines))
#     summary = '\n'.join(summary)
#     print(summary)


def main_all():
    list(rc_files_all())
    # for p in rc_files_all():
    #     print(p)


############ ng #######################################################################################################
if __name__ == '__main__':
    main()
    # main_all()
