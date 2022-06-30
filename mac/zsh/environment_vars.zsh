export PIPENV_VENV_IN_PROJECT=1
export PIPENV_DONT_LOAD_ENV=1
export POETRY_VIRTUALENVS_IN_PROJECT=1

export TERM="xterm-256color"
export DEFAULT_USER="Ben"

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# librdkafka flags
export CFLAGS="-I$(brew --prefix librdkafka)/include $CFLAGS"
export LDFLAGS="-L$(brew --prefix librdkafka)/lib $LDFLAGS"

# openssl
export CFLAGS="-I$(brew --prefix openssl@1.1)/include $CFLAGS"
export LDFLAGS="-L$(brew --prefix openssl@1.1)/lib $LDFLAGS"

# mysql-client
export CFLAGS="-I$(brew --prefix mysql-client)/include $CFLAGS"
export LDFLAGS="-L$(brew --prefix mysql-client)/lib $LDFLAGS"

# zlib
export CFLAGS="-I$(brew --prefix zlib)/include $CFLAGS"
export LDFLAGS="-L$(brew --prefix zlib)/lib $LDFLAGS"

# leveldb
export CFLAGS="-I$(brew --prefix leveldb)/include $CFLAGS"
export LDFLAGS="-L$(brew --prefix leveldb)/lib $LDFLAGS"
