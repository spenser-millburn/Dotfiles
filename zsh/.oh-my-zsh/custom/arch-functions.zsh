
#fuzzyfinder helper to navigate to directory via exact match keyword(s)
fuzzr () {
  local path=$(fuzz -e |  sed 's/ /\\\ /g')
  local p=${path%/*}
  cd $p

}


findr () {
  local path=$(find . | fzf -e |  sed 's/ /\\\ /g')
  local p=${path%/*}
  cd $p
}


fuzzg () {
  local result="$(gtree | fzf -e)"
  local line="$(gtree | grep --line-number $result)"
  gtree | sed "$line!d" 
}


