
# https://github.com/romankoblov/dotfiles_old/blob/master/.bashrc
# ls colors
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export LSCOLORS=fxfxcxdxbxegedabagacad
# if [ "$OS" = "linux" ] ; then
# For linux, etc
  alias ls='ls --color=auto -F'
  alias ll='ls --color=auto -lhF'
# else
# OS-X SPECIFIC - the -G command in OS-X is for colors, in Linux it's no groups
  # alias ls='ls -FG'
  # alias ll="ls -lhFG"
# fi
