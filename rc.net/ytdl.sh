alias ytdl='echo "youtube-dl"; youtube-dl'
alias ytdls='echo "youtube-dl --write-auto-sub"; youtube-dl --write-auto-sub'
alias ytdlformats='echo "use youtube-dl -f <n> <url>"; youtube-dl -F'

# youtube-dl --write-auto-sub --skip-download --sub-lang=ru https://www.youtube.com/watch\?v\=CevxZvSJLk8
# for i in *.ass ; do ffmpeg -i "$i" "$i.srt" ; done

ytdlh() {
    echo 'ytdl'
    echo 'ytdls - with auto subtitles'
    echo 'ytdlformats - list formats'
    echo 'ytdla - audio only'
    echo 'ytdlc - create download dir/script'
}

ytdla() {
    out=$(youtube-dl -F "$1" | grep 'audio only' | fzf | awk '{print $1}')
    echo youtube-dl -f "$out" "$1"
    youtube-dl -f "$out" "$1"
}

ytdlc() {
    echo youtube-dl create fetching title...
    url="$1"
    title=$(tube_list_title_from_url "$url")
    echo "$url"
    echo "$title"
    mkdir "$title"
    cd "$title" || return
    file=_ytdl.sh.cmd
    echo "youtube-dl --download-archive=archive.txt" "$url" > $file
}

tube_list_title_from_url() {
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
    wget -q -O - "$1" | \
       tr "\n" " " | \
       sed 's|.*<title>\([^<]*\).*</head>.*|\1|;s|^\s*||;s|\s*$||'
}
