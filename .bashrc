# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

alias .='source'
alias f='finger'
alias h='history 30'
alias l='ls'
alias j='jobs'
alias p='pushd'
alias pp='popd'
alias x='exit'
alias xd='exit'

#alias ls='ls -f --color=auto'
alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -Al'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -T'
alias cad2='ssh -X j090620r@131.113.100.207'
alias gpu='ssh -Y ex1219@131.113.69.98'
alias r='rdesktop -g 1600x1100'
alias rs='rdesktop -g 1024x768'
alias rmac='rdesktop -g 1400x850'
alias gwan='cat ~/baka.aho'
alias shuzo='source ~/sonota/shuzo/shuzo.sh'
alias freemind='~/freemind/freemind.sh'
alias nii='ssh kawano@136.187.45.250'
alias mew='emacs -f mew'
alias cpwdate='/home/hlab/kawano/sonota/cpwdate.sh'
alias cdgem5='cd `cat /home/hlab/kawano/sonota/gem5_dir`'
alias cdcpsy='cd /home/alps/papers/2018/swopp/kawano'
alias cdbb='cd /home/blackbus/usr/kawano'
alias cdbb2='cd /home/blackbus2/usr/kawano'
alias cdbb3='cd /home/blackbus3/kawano'
alias cdgwork='cd /home/blackbus/usr/kawano/graph_analysis/graphillion/work'
alias cdgrepo='cd /home/blackbus/usr/kawano/graph_analysis/graphillion/graphillion_repo/graphillion'
alias cdhenry='cd /home/blackbus/usr/kawano/henrytool/henry_kaitai_show'
#alias cdro='cd /home/hlab/kawano/sagyo/ronbunshi_05/kawano-draft3_modified/'
#alias cdro='cd /home/alps/papers/2013/kawano_randcore_journal'
#alias cdro='cd /home/alps/papers/2013/ieice/kawano/'
alias cdro='cd /home/blackbus/usr/kawano/ocs_en_ro/asplos2014'
alias cdiccd='cd /home/alps/papers/2014/iccd/kawano/draft0'
alias cdocs='cd /home/blackbus/usr/kawano/ocs_en_ro/asplos2014'
alias lc='LANG=C'
alias e='emacs -nw'
alias chmod_ronbun='chmod -R 775'
alias lsfull='find `pwd` -maxdepth 1 -mindepth 1 -name '
alias cdgs='cd /usr/share/ghostscript/8.70/Resource/Init'
alias cdno='cd /home/alps/papers/2014/nocs/kawano/' 
alias sshx='ssh -XYC2 '
alias sshp='ssh -i ~/.ssh/id_rsa -L 8080:131.113.69.36:8080'
alias su='cat /home/hlab/kawano/caution_su.txt; w; su'
alias rsyncs='rsync -avzP -e ssh --stats'
alias llth='ll -t | head'
alias grep='grep --color -n'
alias psu='ps aux | egrep ryuta | egrep -v egrep'
alias cdpdp='cd /home/alps/papers/2015/pdp'
#alias dstart='HOME=/home/blackbus2/usr/kawano ~/bin/dropbox.py start'
#alias dstop='HOME=/home/blackbus2/usr/kawano ~/bin/dropbox.py stop'
#alias dstatus='HOME=/home/blackbus2/usr/kawano ~/bin/dropbox.py status'
alias dstart='HOME=/export/home/kawano ~/bin/dropbox.py start'
alias dstop='HOME=/export/home/kawano ~/bin/dropbox.py stop'
alias dstatus='HOME=/export/home/kawano ~/bin/dropbox.py status'
alias cddrop='cd ~/Dropbox/drop_files'
alias cdmega='cd ~/MEGA'
alias cdshuron='cd /home/alps/thesis/master/2014/kawano/'
alias cdhaku='cd ~/MEGA/hakuron/kawano/tex/ONESIDE'
alias cdweb='cd /home/web/members/kawano/'
alias cdnkhrstr='cd /home/alps/thesis/bachelor/2014/nakahara'

alias tpython='python -m cProfile -s cumulative'
alias tpython3='python3.6 -m cProfile -s cumulative'
#alias python='/opt/local/bin/python2.7'
#alias python='/usr/bin/python2.7'
alias python='/usr/bin/python3'
alias cdicis='cd /home/alps/papers/2016/ICIS/kawano/draft0'
#alias pip3='/usr/bin/pip3.3'
alias cdieice='cd /home/alps/papers/2018/IEICE/kawano'
alias cdacro='cd /home/alps/papers/2016/IEICE/kawano'
alias cdloren='cd /home/alps/papers/2017/IEICE/kawano'
#alias cdcandar='cd ~/MEGA/swopp2018_kawano/kopt_candar'
alias cdcandar='cd ~/MEGA/swopp2019_kawano/SLmap_candar2019'
alias cdjugyo='cd ~/MEGA/授業/プログラミング基礎同演習'

alias xfrdp='xfreerdp --sec rdp -z'
alias ssh_recon='export SSH_AUTH_SOCK=~/tmp/ssh-agent-kawano-$HOSTNAME'
alias dref='ssh nereid touch `cd ../; pwd`'

alias sudo='sudo '
alias sumatra='/mnt/c/Program\ Files/SumatraPDF/SumatraPDf.exe '
alias sh='bash'
alias cogrep="egrep -v -e '^\s*#' -e '^\s*$'"

alias rsync_ino='rsyncs opteron2:/mnt/ino-raid3/usrs/Seminar_Materials/2020_Seminars /home/ryuta/MEGA/ino_seminar/'

# prompt
#PS1="\h:\[\033[0;31m\]\w\[\033[0m\] % "
PS1='\[\033[1;36m\][\h: \w]\n\[\033[0m\]\$ '

# export PATH=/usr/local/texlive/2019/bin/x86_64-linux:$PATH
# export PATH=/mnt/c/Program\ Files/SumatraPDF/:$PATH

# [ -n ${WSL_AUTH_SOCK} ] && export SSH_AUTH_SOCK=${WSL_AUTH_SOCK}

# export SSH_AUTH_SOCK="$HOME/.ssh/agent.sock"
# if ! ss -a | grep -q "$SSH_AUTH_SOCK"; then
#   rm -f "$SSH_AUTH_SOCK"
#   wsl2_ssh_pageant_bin="$HOME/.ssh/wsl2-ssh-pageant.exe"
#   if test -x "$wsl2_ssh_pageant_bin"; then
#     (setsid nohup socat UNIX-LISTEN:"$SSH_AUTH_SOCK,fork" EXEC:"$wsl2_ssh_pageant_bin" >/dev/null 2>&1 &)
#   else
#     echo >&2 "WARNING: $wsl2_ssh_pageant_bin is not executable."
#   fi
#   unset wsl2_ssh_pageant_bin
# fi
#

# export SSH_AUTH_SOCK=$HOME/.ssh/agent.sock
# ss -a | grep -q $SSH_AUTH_SOCK
# if [ $? -ne 0   ]; then
#     rm -f $SSH_AUTH_SOCK
#     ( setsid socat UNIX-LISTEN:$SSH_AUTH_SOCK,fork EXEC:"/mnt/c/ProgramData/chocolatey/bin/npiperelay.exe -ei -s //./pipe/openssh-ssh-agent",nofork & ) >/dev/null 2>&1
# fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ryuta/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ryuta/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ryuta/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ryuta/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup

# <<< conda initialize <<<

conda activate g-gear

