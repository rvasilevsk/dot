# shellcheck source=/dev/null
[[ -s "$HOME/.local/share/marker/marker.sh" ]] && source "$HOME/.local/share/marker/marker.sh"

function markerhelp() {
	echo '"Ctrl-space": search for commands that match the current written string in the command-line.'
	echo '"Ctrl-k" (or "marker mark"): Bookmark a command.'
	echo '"Ctrl-t": place the cursor at the next placeholder, identified by {{anything}}'
	echo '"marker remove": remove a bookmark'
}
