alias ping1='ping -c 1'

# my ip / local ip
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
# alias ipl="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias ipl="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\\.){3}[0-9]*' | grep -Eo '([0-9]*\\.){3}[0-9]*' | grep -v '127.0.0.1'"

alias speedtest="wget -O /dev/null http://speed.transip.nl/100mb.bin"

alias nm192='nmap 192.168.1.2-8 -sP'

## Request using GET, POST, etc. method ###############################################################################
# for METHOD in GET HEAD POST PUT DELETE TRACE OPTIONS; do
#   alias "$METHOD"="lwp-request -m '$METHOD'"
# done
# unset METHOD

alias GET="lwp-request -m 'GET'"
alias HEAD="lwp-request -m 'HEAD'"
alias POST="lwp-request -m 'POST'"
alias PUT="lwp-request -m 'PUT'"
alias DELETE="lwp-request -m 'DELETE'"
alias TRACE="lwp-request -m 'TRACE'"
alias OPTIONS="lwp-request -m 'OPTIONS'"

## ifconfig.me ########################################################################################################
alias meGeo='curl -s ipinfo.io'
alias meIp='curl ifconfig.me/ip'
alias meHost='curl ifconfig.me/host'
alias meUA='curl ifconfig.me/ua'
alias mePort='curl ifconfig.me/port'
