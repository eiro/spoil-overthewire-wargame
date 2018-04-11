. ./otw level 8
play sh <<\.
    sort data.txt |
        uniq -c |
        awk '$1 == 1 {print $2; exit }'
.
