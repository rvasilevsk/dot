# alias mc='. /usr/local/libexec/mc/mc-wrapper.sh --nosubshell' # maconly
# alias mc='SHELL=/bin/bash . /usr/local/libexec/mc/mc-wrapper.sh' # maconly

# mac
if [ -f /usr/local/Cellar/midnight-commander/4.8.22_2/libexec/mc/mc-wrapper.sh ]
then
	alias mc='SHELL=/bin/bash . /usr/local/Cellar/midnight-commander/4.8.22_2/libexec/mc/mc-wrapper.sh' # maconly
fi

# ubuntu
if [ -f /usr/lib/mc/mc-wrapper.sh ]
then
	alias mc='SHELL=/bin/bash . /usr/lib/mc/mc-wrapper.sh'
fi
