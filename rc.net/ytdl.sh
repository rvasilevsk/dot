export YTDL=/home/beh/.local/bin/youtube-dl

alias _ytdl=/home/beh/.local/bin/youtube-dl

alias ytdl='echo "youtube-dl"; df -kh .; _ytdl'
alias ytdls='echo "youtube-dl --write-auto-sub"; df -kh .; _ytdl --write-auto-sub'
alias ytdlformats='echo "use youtube-dl -f <n> <url>"; df -kh .; _ytdl -F'

# youtube-dl --write-auto-sub --skip-download --sub-lang=ru https://www.youtube.com/watch\?v\=CevxZvSJLk8
# for i in *.ass ; do ffmpeg -i "$i" "$i.srt" ; done

ytdlh() {
    echo 'ytdl'
    echo 'ytdlda --download-archive=archive.txt'
    echo 'ytdls - with auto subtitles'
    echo 'ytdlformats - list formats'
    echo 'ytdla - audio only'
    echo 'ytdlc - create download dir/script'
}

ytdlda() {
    echo youtube-dl --download-archive=archive.txt "$1"
    _ytdl --download-archive=archive.txt "$1"
}

ytdla() {
    out=$(_ytdl -F "$1" | grep 'audio only' | fzf | awk '{print $1}')
    echo youtube-dl -f "$out" "$1"
    _ytdl -f "$out" "$1"
}

ytdlc() {
    if [ "$#" -ne 1 ]; then
        >&2 echo "ytdlc(): Illegal number of parameters"
        return
    fi
    echo youtube-dl create: fetching title...
    url="$1"
    title=$(tube_list_title_from_url "$url")
    echo "$url"
    echo "$title"
    mkdir "$title"
    cd "$title" || return
    file=_ytdl.sh.cmd
    echo "youtube-dl --download-archive=archive.txt" "$url" > $file
}

ytdl-list() {
    if [ "$#" -ne 1 ]; then
        >&2 echo "ytdl-list(): Illegal number of parameters"
        return
    fi
    echo youtube-dl list: fetching title...
    url="$1"
    title=$(tube_list_title_from_url "$url")
    echo "$url"
    echo "$title"
    mkdir "$title"
    file=_ytdl.sh.cmd
    echo youtube-dl -o "$title"'/%(title)s.%(ext)s' --download-archive="$title"'/archive.txt' "$url"
    _ytdl -o "$title"'/%(title)s.%(ext)s' --download-archive="$title"'/archive.txt' "$url"
}

tube_list_title_from_url() {
    if [ "$#" -ne 1 ]; then
        >&2 echo "tube_list_title_from_url(): Illegal number of parameters"
        return
    fi
    # ${title//[^A-Za-z0-9._-]/_}
    title=$(title_from_url "$1")
    title="${title/ - YouTube}"
    title="${title//[|:;]/_}"
    # title="${title// - /-}"
    title="${title// /\_}"
    title="${title//___/\_}"
    title="${title//__/\_}"
    title="${title//__/\_}"
    echo "$title"
}

title_from_url() {
    if [ "$#" -ne 1 ]; then
        >&2 echo "title_from_url(): Illegal number of parameters"
        return
    fi
    wget -q -O - "$1" | \
       tr "\n" " " | \
       sed 's|.*<title>\([^<]*\).*</head>.*|\1|;s|^\s*||;s|\s*$||'
}
