# bashrc


alias c="clear"
alias lt='ls --human-readable --size -1 -S --classify'
alias count='ls | wc -l'
alias today='date +"%A, %B %d, %Y"'
alias weather='function _weather() { curl wttr.in/$1; }; _weather'
alias free='free -m -h'
alias sr="sudo systemctl restart \$1"
alias sss="sudo systemctl status \$1"
alias strt="sudo systemctl start \$1"
alias stp="sudo systemctl stop \$1"
alias se='sudo systemctl enable \$1'

#  A function that searches for a specific file or directory in the current directory and all subdirectories:
finddir() { find . -name $1 }

#  A function that searches for a specific string in a file and outputs the line numbers where it appears:
grepnum() { grep -n $1 $2 }

#  This recursively searches for a specified string in all files in the current directory and its subdirectories, excluding version control directories
alias search='function _search() { grep -r --exclude-dir={.git,.svn} $1 *; }; _search'

# This allows you to navigate to a directory and list the files in it with a single command and also show the directory tree
alias to='function _to() { cd "$@" && tree; }; _to'

# This shows all directories in the PATH variable, one per line.
alias path='echo -e ${PATH//:/\\n}'

# This will show a tree-like structure of the current directory, with directories being shown first.
alias tree='tree -C --dirsfirst'

# Add a copy progress bar
alias cp='rsync -ah --info=progress2'

alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"

# PYTHON 
# Running ve creates a new directory, called venv, containing the usual virtual environment filesystem for Python3. 
# The va alias activates the environment in your current shell:

    alias ve='python3 -m venv ./venv'
    alias va='source ./venv/bin/activate'

alias c='clear'
alias .="cd .."
alias ..="cd ../.."
alias ...="cd ../../.."
alias ....="cd ../../../.."
alias .....="cd ../../../../.."




# Kubernetes commands

    alias k="kubectl"
    alias ka="kubectl apply -f"
    alias kpa="kubectl patch -f"
    alias ked="kubectl edit"
    alias ksc="kubectl scale"
    alias kex="kubectl exec -i -t"
    alias kg="kubectl get"
    alias kga="kubectl get all"
    alias kgall="kubectl get all --all-namespaces"
    alias kinfo="kubectl cluster-info"
    alias kdesc="kubectl describe"
    alias ktp="kubectl top"
    alias klo="kubectl logs -f"
    alias kn="kubectl get nodes"
    alias kpv="kubectl get pv"
    alias kpvc="kubectl get pvc"

# Docker commands

    alias dl="sudo docker ps -l -q"
    alias dps="sudo docker ps"
    alias di="sudo docker images"
    alias dip="sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
    alias dkd="sudo docker run -d -P"
    alias dki="sudo docker run -i -t -P"
    alias dex="sudo docker exec -i -t"

# Estimate file space usage to maximum depth

    alias du1="du -d 1"


# Git commands

    alias gs="git status"
    alias gst="git status -sb"
    alias gl="git log"
    alias ga="git add"
    alias gaa="git add -A"
    alias gal="git add ."
    alias gall="git add ."
    alias gca="git commit -a"
    alias gc="git commit -m"
    alias gcot="git checkout"
    alias gchekout="git checkout"
    alias gchckout="git checkout"
    alias gckout="git checkout"
    alias go="git push -u origin"
    alias gsh='git stash'
    alias gw='git whatchanged'
    alias gitlg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
    alias nah="git clean -df && git checkout -- ."

# History commands

    alias h="history"
    alias h1="history 10"
    alias h2="history 20"
    alias h3="history 30"
    alias hgrep='history | grep'
    alias hg='history | grep'


    # Ping Commands

    alias pg="ping google.com -c 5"
    alias pt="ping facebook.com -c 5"
    alias ping="ping -c 5"
    alias fastping="ping -c 100 -s.2"

# Exit Command

    alias :q="exit"
    alias ext="exit"
    alias xt="exit"
    alias by="exit"
    alias bye="exit"
    alias die="exit"
    alias quit="exit"

# Launch Simple HTTP Server

    alias serve='python -m SimpleHTTPServer'

# Confirmation

    alias mv='mv -i'
    alias cp='cp -i'
    alias ln='ln -i'
    alias rm='rm -I --preserve-root'

# Parenting changing perms on /

    alias chown='chown --preserve-root'
    alias chmod='chmod --preserve-root'
    alias chgrp='chgrp --preserve-root'

# Install & Update utilties

    alias sai="sudo apt install"
    alias sai="sudo apt-get install"
    alias sau="sudo apt update"
    alias sau="sudo apt-get update"
    alias update="sudo apt update"
    alias update="yum update"
    alias updatey="yum -y update"

# System state

    alias reboot="sudo /sbin/reboot"
    alias poweroff="sudo /sbin/poweroff"
    alias halt="sudo /sbin/halt"
    alias shutdown="sudo /sbin/shutdown"
    alias flighton='sudo rfkill block all'
    alias flightoff='sudo rfkill unblock all'
    alias snr='sudo service network-manager restart'

# Show open ports

    alias ports='sudo netstat -tulanp'


    # Free and Used

    alias meminfo="free -m -l -t"

# Get top process eating memory

    alias psmem="ps auxf | sort -nr -k 4"
    alias psmem10="ps auxf | sort -nr -k 4 | head -10"

# Get top process eating cpu

    alias pscpu="ps auxf | sort -nr -k 3"
    alias pscpu10="ps auxf | sort -nr -k 3 | head -10"

# Get details of a process

    alias paux='ps aux | grep'

# Get server cpu info

    alias cpuinfo="lscpu"

# Older system use /proc/cpuinfo

    alias cpuinfo="less /proc/cpuinfo"

# Get GPU ram on desktop / laptop

    alias gpumeminfo="grep -i --color memory /var/log/Xorg.0.log"

# Resume wget by default

    alias wget="wget -c"

# Grabs the disk usage in the current directory

    alias usage='du -ch | grep total'

# Gets the total disk usage on your machine

    alias totalusage='df -hl --total | grep total'

# Shows the individual partition usages without the temporary memory values

    alias partusage='df -hlT --exclude-type=tmpfs --exclude-type=devtmpfs'

# Gives you what is using the most space. Both directories and files. Varies on current directory

    alias most='du -hsx * | sort -rh | head -10'
