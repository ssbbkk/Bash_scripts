#!/bin/bash
# Some simple function

echo "What is your name?"
read  i

function greet {
        echo "Hi, $1!"           # $1 passes the first argument given to function, $2 second and so on, reaching 10 argument: ${10}
}

echo "And now, the greeting!"
greet $i                    	 # calling the function with given parameter, here "Scott"

