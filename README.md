# Inputstream-reader-cli-utils 

Utils to simplify and support simplify cli-input-tasks in bash-scripts

# cli-navigation.sh
Supports you when implementing user-interaction in bash-scripts by realizing an easy commandlin-selection-menu with errorhandling.
Usually you ask the user in a script a question and consider a count of oportunities like:

<question> <option_1> ... <option_n>

The user has to choose one option by typing number or name. If he types wrong, than you should handle it.

This script implements a generic menu for you. You just have to pass question as doublequoted string and the args (doesn't matter how many) like:

./cli-navigation.sh "choose one of this menuoptions" option1 option2 foo bar 

It will print in commandline:

choose one of this menuoptions
(1) option1
(2) option2
(3) foo
(4) bar

Afterwards it waits for correct selection. If userselection is not valid it will repeat the question. If userselection is valid, you can handle the returnvalue in your code. The returnvalue is an integer as string.

 
