RBENV_ROOT=/usr/local/var/rbenv ; export RBENV_ROOT
# needs to be declared after path
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=`brew --prefix libressl`"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

