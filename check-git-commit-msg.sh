#!/bin/bash

INPUT_FILE=$1
COMMIT_MESSAGE_HEAD=`head -n 1 $INPUT_FILE`
COMMIT_MESSAGE_FOOTER=`tail -n 1 $INPUT_FILE`

CURRENT_BRANCH=`git rev-parse --abbrev-ref HEAD`

if [[ "$CURRENT_BRANCH" =~ "feature/.*" || "$CURRENT_BRANCH" =~ "hotfix/.*" ]]; then
    exit 0
fi

PATTERN_HEAD='^(feat|fix|chore|perf|refactor|style|test)!{0,1}: .*$'
PATTERN_TAIL='^(SOLVES: .*|UNTRACKED)$'

if [[ "$COMMIT_MESSAGE_HEAD" =~ $PATTERN_HEAD && "$COMMIT_MESSAGE_FOOTER" =~ $PATTERN_TAIL ]]; then
    exit 0
else
    echo "Commit message does not match the pattern"
    exit 1
fi