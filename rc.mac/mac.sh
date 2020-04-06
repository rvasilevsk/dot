#######################################################################################################################
alias o='open'
alias oo='open .'

# Mute/Unmute the system volume. Plays nice with all other volume settings.
alias mute="osascript -e 'set volume output muted true'"
alias unmute="osascript -e 'set volume output muted false'"

# Pin to the tail of long commands for an audible alert after long processes
## curl http://downloads.com/hugefile.zip; lmk
alias lmk="say 'Process complete.'"

#######################################################################################################################
# https://github.com/Bash-it/bash-it/blob/master/aliases/available/osx.aliases.bash
# cite 'about-alias'
# about-alias 'osx-specific aliases'

# Desktop Programs
# alias fireworks="open -a '/Applications/Adobe Fireworks CS3/Adobe Fireworks CS3.app'"
# alias photoshop="open -a '/Applications/Adobe Photoshop CS3/Adobe Photoshop.app'"
alias preview='open -a "$PREVIEW"'
alias xcode="open -a '/Applications/XCode.app'"
# alias filemerge="open -a '/Developer/Applications/Utilities/FileMerge.app'"
alias safari="open -a safari"
alias firefox="open -a firefox"
alias chrome="open -a google\\ chrome"
# alias chromium="open -a chromium"
alias dashcode="open -a dashcode"
# alias f='open -a Finder '
alias fh='open -a Finder .'
# alias textedit='open -a TextEdit'
# alias hex='open -a "Hex Fiend"'
alias skype='open -a Skype'
alias mou='open -a Mou'
# alias subl='open -a Sublime\ Text'

if [ -s /usr/bin/firefox ] ; then
  unalias firefox
fi
