. ./otw level 9
play sh <<\.
    strings data.txt |
        sed -rn 's/^=+ +(.{10,})/\1/p'
.
