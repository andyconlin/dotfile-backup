# Andy's dotfiles

This repository currently has two purposes: 
- backup my dotfiles, configs, etc. in a way that makes reinstalling easy
- publish these files so that others can find them, use them, and/or find inspiration from them

Platforms included:
- bash (and shell, in general)
- vim
- airline
- promptline
- homebrew
- mac app store (via `mas`)
- atom
- pip
- npm
- motd
- bitbar plugins (list, plus any I've made; or just move the whole plugin folder over)
- various applescripts, folder actions, and necessary assets
- bettertouchtool (maybe a method in the `.sh` file to backup BTT to the repo, but there is sensitive data in there, I believe, so store elsewhere or clean somehow)
- also `ls` the Applications folder to catch any other applications

Scripts included:
- backupScript.sh
- reinstallScript.sh

Workflows ideas:
- save locations to a .csv to use in reinstallScript.sh
- alias for running backupScript.sh
  - maybe make this run on a schedule
- options to backup locally, also commit, and push to github
- make use of brewfile/bundle/whatever it is :)
