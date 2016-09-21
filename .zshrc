# a quick snapshot of a system's health
status() {
  { echo -e "\nuptime:"
    uptime
    echo -e "\disk space:"
    df -h 2> /dev/null
    echo -e "\ninodes:"
    df -i 2> /dev/null
    if [[ -r /var/log/system.log ]]; then
        echo -e "\nsyslog:"
        tail /var/log/system.log
    fi
    if [[ -r /var/log/messages ]]; then
        echo -e "\nmessages:"
        tail /var/log/messages
    fi
  } | less
}

# display what vim think is a file's encoding
# <http://vim.wikia.com/wiki/Bash_file_encoding_alias>
alias vimenc='vim -c '\''let $enc = &fileencoding | execute "!echo Encoding:  $enc" | q'\'''

# update python pip packages
pup() {
  pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs pip install -U
}

# check self ip
myip() {
    curl ifconfig.me
}

# gitignore
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

# ammend git commit histories
gitcm() {
  git filter-branch --commit-filter '
  if [ "$GIT_AUTHOR_NAME" == "THE_WRONG_NAME" ];
  then
    GIT_AUTHOR_NAME="noscripter";
    GIT_AUTHOR_EMAIL="noscripter at whitehouse.gov";
    git commit-tree "$@";
  else
    git commit-tree "$@";
  fi' HEAD
}

# name is self-explanatory
cleardnscache() {
    sudo discoveryutil mdnsflushcache
}

cleardnscache2() {
    sudo killall -HUP mDNSResponder
}

clearcache() {
  dscacheutil -flushcache
}

fixssh() {
  eval "$(ssh-agent -s)"
  ssh-add ~/.ssh/github
  ssh-add -l
}

tsharkhttp() {
  tshark  'tcp port 80 and (((ip[2:2] - ((ip[0]&0xf)<<2)) - ((tcp[12]&0xf0)>>2)) != 0)'
}

ngrephttp() {
  ngrep -q -d en0 -W byline port 80
}

## grep all HTTP GET or POST requests from network traffic on eth0 interface  ##
ngrephttp2() {
  ngrep -l -q -d en0 "^GET |^POST " tcp and port 80
}

showtime() {
  date "+%Y-%m-%d %H:%M:%S"
}
