#!/bin/bash

while read -r alias path; do
	eval path=$path
    [ -d "$path" ] \
    && command=cd \
    || command="vim"

    printf "alias %s='%s %s'\n" "$alias" "$command" "$path"
done < ~/.config/shortcuts > ~/.config/aliasrc
