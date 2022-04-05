
#fuzzyfinder helper to navigate to directory via exact match keyword(s)
fuzzr () {
  local path=$(fuzz -e |  sed 's/ /\\\ /g')
  local p=${path%/*}
  cd $p

}
