# shnavi

## Linux

### Util to simplify and support Terminalinput-menus in bash-scripts.
Supports you when implementing user-interaction in bash-scripts by realizing an easy terminal-selection-menu with error-avoidence.

To implement shnavi in bashscripts you have to store it in `/usr/local/bin/`.

After downloading the code you can execute in your terminal: `sudo mv ./shnavi.sh /usr/local/bin/shnavi`

You can run `./example.sh` to see how its work and look at the example to see how simple it is to iplement.

The syntax to use it in scripts is:
`returnval=$(shnavi "quetion or advice for user" option_1 option_2 foo bar ... option_n`

It will print in commandline:
```
question or advice for user
(1) option_1
(2) option_2
(3) foo
(4) bar
...
(n) option_n
```

Afterwards it waits for correct selection. If userselection is not valid it will repeat the question. If userselection is valid, you can handle the returnvalue in your code. The returnvalue is an integer as string.

