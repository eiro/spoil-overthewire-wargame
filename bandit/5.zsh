. ./otw level 5
play sh <<\.
    find . \
        -size 1033c -not -executable \
        -exec sed 's/ //g' '{}' \;
.
