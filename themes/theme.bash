#!/bin/bash


print_before_the_prompt () {  
    printf "\n$reset_color%s$red@$normal$reset_color%s$red:$reset_color %s $yellow%s$reset_color \n" "$USER" "$HOSTNAME" "$PWD"  "$(vcprompt)"
}
export PROMPT_COMMAND=print_before_the_prompt

# export PS1="$red($reset_color\t$red)$reset_color \$ " # Prompt
export PS1="\[$red\]→\[$reset_color\] " # Prompt
