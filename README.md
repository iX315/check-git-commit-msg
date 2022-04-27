# check git commit message

a simple script for the commit-msg git hook

## TL;DR; install
 - just copy the files from this repo (readme not needed)
 - start install.sh
 - enjoy ;)
## manual install

 - configure the pattern as you wish
 - add the script to your repo
 - create a file with the name `commit-msg` into your `.git/hooks/` folder
 - change permission `sudo chmod a+x ./git/hooks/commit-msg`
 - insert as content of that file
    ```BASH
    #!/bin/sh

    ./check-git-commit-msg.sh "$1"
    ```
 - enjoy! ;)