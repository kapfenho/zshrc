vi() {
  if [ -f "$1" -a ! -w "$1" ] || [ ! -f "$1" -a ! -w "$(dirname $1)" ]
  then
    sudo -n /usr/bin/env ${EDITOR} $*
  else
    /usr/bin/env ${EDITOR} $*
  fi
}
