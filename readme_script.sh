#!/bin/bash

flashgreen=$(tput setaf 2; tput setab 0; tput blink)
clear_style=$(tput sgr0)

if [[ ! -f $HOME/scripts/readme.txt ]]; then
    cat << EOF > $HOME/scripts/readme.txt

[Global]
# Put the global settings here

[Local]
# Put the local settings here

EOF


fi

if [[ ! -d $HOME/scripts/dir/ ]]; then
    mkdir $HOME/scripts/dir
    mv $HOME/scripts/readme.txt $HOME/scripts/dir/
fi

# Some color text

echo -e "$flashgreen\"RESULT\"$clear_style"

echo "$(ls -l $HOME/scripts/dir)"
