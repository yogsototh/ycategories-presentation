#!/usr/bin/env zsh

i=10
for fic in *.html; do
    title=$( <$fic grep h2 | sed 's/<[^>]*>//g;s/[^a-zA-Z]/_/g;s/__*/_/g;s/^_//;s/_$//')
    if ((i<100)); then
        num="0$i"
    else
        num="$i"
    fi
    ((i+=10))
    newfic=${num}_$title.${fic:e}
    [[ $fic == $newfic ]] && { continue }
    [[ -e $newfic ]] && {
            print -- "$newfic already exists!" >&2
            continue
        }
    mv $fic $newfic
done
