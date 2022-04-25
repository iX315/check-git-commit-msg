# check git commit message

a simple script for the commit-msg git hook

## install

 - configure the pattern as you wish
 - add the script to your repo
 - create a file into your `.git/hooks/`folder with the name `commit-msg`
 - change permission `sudo chmod a+x ./git/hooks/commit-msg`
 - insert as content of that file
    ```BASH
    #!/bin/sh

    ./check-git-commit-msg.sh "$1"
    ```

enjoy! ;)