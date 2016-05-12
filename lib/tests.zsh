# show terminal colors
#   other colortool in ~/.scripts/colortest
#
function show-colors() {
  for i in {0..255} ; do
    printf "\x1b[38;5;${i}mcolour${i}\n"
  done
}

# test sequential disk write speed
#
alias test-write-speed='time sh -c "dd if=/dev/zero of=/Volumes/Chaos/test1 bs=25m count=820 && sync"'

# vim: ft=sh :
