#!/bin/bash

secret='shhh' # Don't tell anyone!

read -s -p "What's the secret code? " REPLY
echo

# If the user types in the correct secret, tell them they got it right!
if [ "$secret" = "$REPLY" ]; then
    echo "You got it right!"
    correct=true
else
    echo "You got it wrong :("
    correct=false
fi

case $correct in
true)
    echo "You have unlocked the secret menu!"
    # TODO: add a secret menu for people in the know.
    ;;
*)
    echo "Go Away!" # People who get it wrong need to be told to go away!
    ;;
esac
				
