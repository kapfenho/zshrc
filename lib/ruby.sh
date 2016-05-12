# auto: use .ruby-version files in dirs
source /usr/local/opt/chruby/share/chruby/chruby.sh
#source /usr/local/opt/chruby/share/chruby/auto.sh
RUBIES+=(/opt/rubies/*)
chruby 2.3.0
