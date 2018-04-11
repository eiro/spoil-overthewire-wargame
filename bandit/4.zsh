. ./otw level 4
play sh <<\.
    file inhere/*               |
        sed -n 's/: ASCII.*//p' |
        xargs cat --
.
