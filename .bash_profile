if [ -f ~/bin/git-completion.bash ]; then
	source ~/bin/git-completion.bash
fi
if [ -f ~/bin/tab-functions.bash ]; then
	source ~/bin/tab-functions.bash
fi
if [ -f ~/bin/java-version.bash ]; then
	source ~/bin/java-version.bash
fi
if [ -f ~/bin/git-flow-completion.bash ]; then
	source ~/bin/git-flow-completion.bash
fi

#enables color in the terminal bash shell export
CLICOLOR=1
#sets up the color scheme for list export
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
#sets up the prompt color (currently a green similar to linux terminal)
export PS1='\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;36m\]\w\[\033[01;33m\]$(__git_ps1)\[\033[00m\]\$ '
#enables color for iTerm
export TERM=xterm-color

## Alias
alias ll='ls -alFG'
alias la='ls -AG'
alias l='ls -CFG'

alias src='source ~/.bash_profile'

alias finder='open .'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

##GIT
alias commit='git commit'
alias add='git add'
alias pull='git pull'
alias push='git push'
alias status='git status'
alias checkout='git checkout'
alias merge='git merge'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

export JAVA_OPTS="-Xms256m -Xmx768m -XX:MaxPermSize=768m"

if [ -f ~/.bash_private_profile ]; then
	source ~/.bash_private_profile
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH:/Applications/Xcode.app/Contents/Developer/usr/bin:/usr/local/heroku/bin:/usr/local/sbin:/opt/redis/src:/opt/gradle/bin:~/bin:/opt/mongodb/bin"

launchctl setenv PATH $PATH

export GRAILS_OPTS="-XX:MaxPermSize=1024m -Xmx1024M -server"
export GRADLE_HOME="/opt/gradle"

export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
export HISTCONTROL=erasedups

if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/bhaslop/.gvm/bin/gvm-init.sh" && ! $(which gvm-init.sh) ]] && source "/Users/bhaslop/.gvm/bin/gvm-init.sh"
