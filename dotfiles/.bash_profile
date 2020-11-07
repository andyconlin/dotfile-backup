# prompt configuration
# PS1="\[\e[34;1;40m\][\[\e[32m\]\u \[\e[34m\]: \[\e[33m\]\W\[\e[34m\]] \[\e[36m\]$ \[\e[m\]"

source ~/.promptline2.sh

# Powerline
# if [ -d "$HOME/Library/Python/3.7/bin" ]; then
#     PATH="$HOME/Library/Python/3.7/bin:$PATH"
# fi

# powerline-daemon -q
# POWERLINE_BASH_CONTINUATION=1
# POWERLINE_BASH_SELECT=1
# source /Users/andy/Library/Python/3.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh

# for removing the zsh notice
export BASH_SILENCE_DEPRECATION_WARNING=1

# edit message of the day (shows on terminal start)
alias emotd="sudo nano /etc/motd"

# edit powerline config
alias epc="nano ~/.config/powerline/themes/shell/default_leftonly.json"

# edit vimrc
alias evr="vim ~/.vimrc"
alias evc="vim ~/.vimrc"

# edit vim packages
alias evp="vim ~/.vim/packages.vim"

# ls colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad


# color man pages
# from https://www.tecmint.com/view-colored-man-pages-in-linux/
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# aliases
# alias ebp="nano ~/.bash_profile"
alias ebp="vim ~/.bash_profile"
alias nbp="ebp"
alias vbp="vim ~/.bash_profile"
alias rbp="source ~/.bash_profile"
alias tn="touch ; nano "$1""
alias wai="who_am_i"
alias ..="cd .."
alias cd.="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias cdp="cd ~/Documents/projects && ls"
alias proj="cdp"
alias cdd="cd ~/Documents/_documentation && ls"
alias rip="netstat -rn | grep UGSc | grep default" # Router IP
alias docs="cdl ~/Documents/_documentation"
alias temp="cdl ~/Desktop/desktopStuff/_temporary"
alias clients="cdl ~/Documents/employment/freelanceBusiness/clients"
alias dot="cdl ~/Documents/projects/dotfile-backup"
alias dotfiles="dot"
alias .f="dot"
alias finder="open ."
alias o.="open ."
alias lse="killall afplay"
alias routerip="netstat -rn |grep default"
alias l6e="killall afplay"
alias nnn="nnn -e"
alias n="nnn"
alias t="tree"
alias ta="tree -a"
alias lsa="ls -a"
alias c="clear"
alias bitbar="cdl ~/Documents/computer/bitbar/plugins"
alias q="exit 0"
alias .d="cd ~/Documents/.doNotBackup"

# git aliases
alias gs="git status"
alias gc="git commit -m"

# functions

# from: https://apple.stackexchange.com/a/293505
keyboard_battery () {
  ioreg -l | egrep "BatteryPercent|Bluetooth Product Name"
}

cdl () {
  cd "$1"
  ls
}

#cdp () {
#  cd ~/Documents/projects
#  ls
#}

et () {
  echo "going home..."
  cd ~
}

alias ett="et && clear"
alias etc="et && clear"

nanobp () {
  nano ~/.bash_profile
}

ssid () {
# thank to https://stackoverflow.com/a/8542420/8550628
  networksetup -listallhardwareports | awk '/Wi-Fi/{getline; print $2}' | xargs networksetup -getairportnetwork | cut -c24-
}

wifipass () {
# thanks to https://www.labnol.org/software/find-wi-fi-network-password/28949/
  security find-generic-password -wa "$1"
}

multivac () {
  typewriter "INSUFFICIENT DATA FOR A MEANINGFUL ANSWER" 1
}


typewriter () {
    text="$1"
    delay="$2"
    # for ((i = 0; i < ${#text}; i++))
    for i in $(seq 0 $(expr length "${text}")) ; do
        echo -n "${text:$i:1}"
        sleep ${delay}
    done
# https://stackoverflow.com/a/10458814/8550628
}


# display layout
displays () {
  if [[ $@ == "-vr" ]]; then
    # no escpaing needed:    command displayplacer \"id:03FC6C71-383B-EE94-5FEC-A8BAF43DC2FB res:2560x1440 hz:60 color_depth:8 scaling:on origin:\(0,0\) degree:0\" \"id:12362588-7C1D-77EE-5963-4AEFA92D88E2 res:1440x900 color_depth:4 scaling:on origin:\(-1440,760\) degree:0\" \"id:7D2ED60C-D713-93F2-D9F3-6B0C62FB55FE res:1440x2560 hz:60 color_depth:8 scaling:on origin:\(2560,-341\) degree:90\"
    command displayplacer "id:03FC6C71-383B-EE94-5FEC-A8BAF43DC2FB res:2560x1440 hz:60 color_depth:8 scaling:on origin:(0,0) degree:0" "id:12362588-7C1D-77EE-5963-4AEFA92D88E2 res:1440x900 color_depth:4 scaling:on origin:(-1440,760) degree:0" "id:7D2ED60C-D713-93F2-D9F3-6B0C62FB55FE res:1440x2560 hz:60 color_depth:8 scaling:on origin:(2560,-341) degree:90"
  else
    echo "~~this config is not yet definied~~"
    echo "CONFIGS AVAIALBLE"
    echo "    -vr    right monitor vertical"
    echo ""
    echo "INSTRUCTIONS TO ADD NEW CONFIG"
    echo "    1. set displays to desired configuration"
    echo "    2. run command \"displayplacer list\""
    echo "    3. modify this function in .bash_profile with new args, etc."
  fi
}

who_am_i () {

  afplay ~/Documents/computer/assets/sound/who_am_i.mp3 &

  sleep 1.1
  
  for i in {1..3}
  do
    echo "."
    sleep .8
  done
  
  echo "."
  sleep .7

  echo "2"
  sleep .8
  echo "4"
  sleep .7
  echo "6"
  sleep .75
  echo "O"
  sleep .7
  echo "w"
  

#  for i in {1..50}
#  do
#    echo "🚩"
#    sleep .03
#    echo "  🚩"
#    sleep .03
#    echo "    🚩"
#    sleep .03
#    echo "      🚩"
#    sleep .03
#    echo "        🚩"
#    sleep .03
#    echo "      🚩"
#    sleep .03
#    echo "    🚩"
#    sleep .03
#    echo "  🚩"
#    sleep .03
#    echo "🚩"
#    sleep .03
#  done

  for i in {1..101}
  do
    echo "o"
    sleep .05
  done

  echo "n"
  sleep .1
  echo "u"
  sleep .1
  echo "h!"
  
  for i in {1..50}
  do
  #  if [ "$i" == 42 ]
  #  then
  #    echo "🇫🇷"
  #  fi

    echo ""
    sleep .1
  done

  killall afplay

  true
}


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/andy/Documents/computer/utilities/google-cloud-sdk/path.bash.inc' ]; then . '/Users/andy/Documents/computer/utilities/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/andy/Documents/computer/utilities/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/andy/Documents/computer/utilities/google-cloud-sdk/completion.bash.inc'; fi
