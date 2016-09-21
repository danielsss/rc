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

alias nhttp="sudo tcpdump -i en0 -vvv 'port 80'"
alias nhttps="sudo tcpdump -i en0 -vvv 'port 443'"

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


alias now='date +"%Y-%m-%d_%H_%M_%S-vim-startuptime-log"'
vimtime() {
  vim --startuptime `now` `now`
}
mvimtime() {
  mvim --startuptime `now` `now`
}
#TODO: parameter
profilevim() {
  vim --cmd 'profile start vim-profile.log' \
      --cmd 'profile func *' \
      --cmd 'profile file *' \
      -c 'profdel func *' \
      -c 'profdel file *' \
      -c 'qa!'
}

### generate random mac address
alias randommacaddy="openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//'"

alias randommac="openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//'"
spoofmac() {
  ifconfig en0 ether
  sudo ifconfig en0 ether `randommac`
  ifconfig en0 ether
}

spoofmac2() {
  openssl rand -hex 1 | tr '[:lower:]' '[:upper:]' | xargs echo "obase=2;ibase=16;" | bc | cut -c1-6 | sed 's/$/00/' | xargs echo "obase=16;ibase=2;" | bc | sed "s/$/:$(openssl rand -hex 5 | sed 's/\(..\)/\1:/g; s/.$//' | tr '[:lower:]' '[:upper:]')/" | xargs sudo ifconfig en0 ether
}

alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"


check() {
  ps axw -o pid,ppid,user,%cpu,vsz,wchan,command | egrep '('$1'|PID)' | grep -v egrep
}

checkbaidu() {
  curl -w "DNS解析时间：%{time_namelookup}，TCP 连接建立时间: %{time_connect}, SSL 连接建立时间: %{time_appconnect}, 服务器返回第一个字节所用的时间：%{time_starttransfer}，完成请求所用的时间：%{time_total}，下载大小：%{size_download}，下载速度：%{speed_download}\n" \ -so /dev/null -L http://baidu.com/
}

dsstore() {
  sudo find / -name ".DS_Store" -depth -exec rm -v {} \;
}
}
