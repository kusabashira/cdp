cdp() {
  cd "${1:-..}"
}

_cdp() {
  local wd="${COMP_WORDS[COMP_CWORD]:-$(dirname "$(pwd)")}"
  COMPREPLY=( "$(dirname "$wd")" )
  compopt -o nospace
}

complete -F _cdp cdp
