# solutions to "over the wire" wargames

WARNING: `*.zsh` files of this distribution are the solutions
to the wargames: don't look at their content if you don't want to spoil the play.

[Over the wire wargames](http://overthewire.org/wargames) is the first
addictive terminal game i ever played. it also is a very good
opportunity to learn about unix and security. however, it lack a good
UI :).

this is the skel to play "over the wire" wargames the programmers
way. you see? programmers don't do things, they write programs to
do things.

## requirements

* your current shell must be zsh
* `extendedglob` and `pathdirs` options are on
* those commands are available: make, ssh, sshpass, toilet

# play bandit interactively

go to the `bandit` directory and install the bootstrap

    cd bandit
    make bootstrap.key

now you load the awesome UI at level 0 and start to play

    . ./otw
    play    # hack hack hack
    edit    # vi   vi   vi  (see "collect keys" section)
    save    # or make 0.level
    up      # level up or ...
    level n # level to n

that's it! next time you play, you can start directly to the next level
you want

    . ./otw

# collect keys

for each level n, you need to write a script `n.zsh` and run `make n.level`
to store the password of the next level. `make` need all the previous level
files to be built to run this one.

so imagine you're running level 3 and the password to the next level is the
fqdn of the game server, do

    $ vim 3.zsh
    $ make 3.level
    $ level 4

if you already sourced `otw`, this should have the same effect

    $ edit
    $ up

when `3.zsh should look like

    . ./otw level 3
    play hostname --fqdn

that's it ... play is just an helper over ssh

    play () sshpass -p$password ssh -p $port $login@$host $@

