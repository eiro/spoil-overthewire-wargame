. ./otw level 14

ssh=(
    ssh
    -F /dev/null
    -p $port
    -i 13.level
    -o Batchmode=yes
    -o IdentitiesOnly=yes
    -o StrictHostKeyChecking=no
    $login@$host
)

$ssh sh <<\.
    nc localhost 30000 < /etc/bandit_pass/bandit14 |
        sed -n 2p
.

