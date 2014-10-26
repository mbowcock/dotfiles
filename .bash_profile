export PATH=/usr/local/bin:$PATH
export VIMCLOJURE_SERVER_JAR=$HOME/Library/vimclojure/server-2.3.1.jar
export CLASSPATH=/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar:/usr/local/Cellar/clojure/1.3.0/clojure-1.3.0.jar:$HOME/Library/vimclojure/server-2.3.1.jar
alias ll='ls -l'
alias st='/Applications/Sublime\ Text\ 2.app/Contents/Sublime\ Text\ 2 &'
source /usr/local/bin/virtualenvwrapper.sh
set $EDITOR=vim
set $NODE_PATH=/usr/local/lib/node_modules

function parse_git_dirty {
      [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
function parse_git_branch {
      git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}
export PS1='@\h \[\033[1;33m\]\w\[\033[0m\]$(parse_git_branch)$ '
