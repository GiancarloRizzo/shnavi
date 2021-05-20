#!/bin/bash

#tasks:
#check if enough params are passed to function
#print userinformation
#read input
#proof and handle input
#return selected mode

# ====================================================================================================
proof_userinput() {
#check if userselection contains just one arg
#check if userselection is positiv integer
#check if userselection is not greater than count of possible options

if [[ $1 =~ ^[\-0-9]+$ ]] && (( $1 > 0 )) && (( $1 < $maxoptioncount ))
then
        guilty_selection=1;
        return 1;
else
        echo 'Please select a guilty option by typing correct number.'
        guilty_selection=0;
fi
}
# ====================================================================================================


maxoptioncount=$#;
# $1: userinformation
# > $1: selectable options for user


# check if read_userinput() gets enough arguments
if [ "$#" -le 1 ]; then
    echo "Illegal number of parameters"
    exit 1;
fi


guilty_selection=0;
while [ $guilty_selection -eq 0 ];
do

#ask user for input
question="${1}";

echo $question > /dev/tty

#list possible options
count=0;
for var in "$@"
do
if [ $count -ge 1 ]
then
echo "(${count}) " "$var" > /dev/tty
fi

count=$(( $count+1 ));
done

read selected_option
proof_userinput $selected_option;

done

echo '\n' $selected_option; 
