. ./otw level 11
play sh <<\.
    awk '{ print $NF }' data.txt |
        tr 'a-zA-Z' 'n-za-mN-ZA-M'
.
