#!/bin/bash

# make sure you either moved the script 'shnavi' into /usr/local/bin


selection=$(shnavi "my question" auto default custom)

if [ "$selection" == 1 ]
then
echo 'read settings from your configfile'
# put in your code to handle
elif [ "$selection" == 2 ]
then
echo 'read settings from defaultconfig'
# put in your code to handle
else
echo 'let the user set its own config'
# put in your code to handle
echo
selection=$(shnavi "Do you like shnavi?" yes no)

if [ "$selection" == 1 ]
then 
echo "I'm glad to hear that"
else
echo "Ok, but it works :o)"
fi
fi


