alias ytdl='echo "youtube-dl --write-auto-sub"; youtube-dl --write-auto-sub'
alias ytdlformats='echo "use youtube-dl -f <n> <url>"; youtube-dl -F'

# youtube-dl --write-auto-sub --skip-download --sub-lang=ru https://www.youtube.com/watch\?v\=CevxZvSJLk8
# for i in *.ass ; do ffmpeg -i "$i" "$i.srt" ; done

ytdlh() {
    echo 'ytdlc - create'
    echo 'ytdlformats - list formats'
    echo 'ytdla - audio only'
}

ytdla() {
    out=$(youtube-dl -F "$1" | grep 'audio only' | fzf | awk '{print $1}')
    echo youtube-dl -f "$out" "$1"
    youtube-dl -f "$out" "$1"
}

ytdlc() {
    echo youtube-dl create
    echo -n "title: "
    read -r title
    echo -n "url: "
    read -r url
    echo "$title"
    echo "$url"
    mkdir "$title"
    cd "$title" || return
    file=_ytdl.sh.cmd
    echo "youtube-dl --download-archive=archive.txt" "$url" > $file
}

title_from_url() {
    wget -q -O - "$1" | \
       tr "\n" " " | \
       sed 's|.*<title>\([^<]*\).*</head>.*|\1|;s|^\s*||;s|\s*$||'
}
