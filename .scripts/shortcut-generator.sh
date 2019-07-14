#!/bin/bash

while read -r alias path; do
	eval path=$path
    [ -d "$path" ] \
    && command=cd \
    || command="${VISUAL:-${EDITOR-:vi}}"

    printf "alias %s='%s %s'\n" "$alias" "$command" "$path"
done < ~/.config/shortcuts > ~/.config/aliasrc
