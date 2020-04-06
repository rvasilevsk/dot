
# linuxonly?
10_lagest_open_files() {
	lsof / | awk '{ if($7 > 1048576) print $7/1048576 "MB" " " $9 " " $1 }' | sort -n -u | tail
}

# [Create a thumbnail from the first page of a PDF file](http://www.bashoneliners.com/oneliners/149/)
pdfThumb() {
	convert -thumbnail x80 file.pdf[0] thumb.png
}

# [AWK — Википедия](https://ru.wikipedia.org/wiki/AWK)
# longestLine() {}



# [selecta/EXAMPLES.md at master · garybernhardt/selecta · GitHub](https://github.com/garybernhardt/selecta/blob/master/EXAMPLES.md)
# proj() {
#     cd $(find ~/rails-projects ~/django-projects -maxdepth 1 -type d | selecta)
# }
