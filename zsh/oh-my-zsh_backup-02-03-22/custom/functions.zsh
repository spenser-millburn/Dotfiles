
#fuzzyfinder heelper to navigate to directory via exact match keyword(s)
fuzzr () {
	local fuzzpath="$(echo $(fuzz -e))"
	local fuzzpath_full="$HOME${fuzzpath:1}"
	local fuzzdir="${fuzzpath_full%/*}/"
	cd "$fuzzdir"
}
