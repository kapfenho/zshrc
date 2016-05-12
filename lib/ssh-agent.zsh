#  ssh-agent
#
#  currently gpg-agent can't handle ed25519
#  OS X has also started an (old) agent
#
if ! pgrep ssh-agent >/dev/null
then
  ssh-agent >~/.ssh-agent-info 2>/dev/null
fi
. ~/.ssh-agent-info >/dev/null
