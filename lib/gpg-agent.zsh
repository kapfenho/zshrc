#  gpg-agent
#
#  currently gpg-agent can't handle ed25519
#  OS X has also started an (old) agent
#
if ! pgrep gpg-agent >/dev/null
then
  eval $(gpg-agent --daemon)
else
  . ~/.gpg-agent-info
fi
export GPG_AGENT_INFO 
