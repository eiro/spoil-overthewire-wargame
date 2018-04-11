. ./otw level 12
play sh <<\.
    alias g='gzip -d'
    alias b='bzip2 -d'
    alias t='tar xOf -'
    xxd -r data.txt |
        g | b | g | t | t | b | t | g |
        awk '{print $NF}'
.
