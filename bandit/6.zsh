. ./otw level 6
play sh 2> 6.err <<\.
    find / -user bandit7 \
        -group bandit6 \
        -size 33c -exec cat '{}' \;
    true
.
