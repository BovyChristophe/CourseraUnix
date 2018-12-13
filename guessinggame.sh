#!/usr/bin/env bash

function testNFiles {
    if [[ $1 -gt $2 ]]
    then
        echo "Too high"
    else
        echo "Too low"
    fi
}

function askForValue {
    echo "How many files in the current directory?"
    read n
    return $n
}


total=$(ls -1 | wc -l)
askForValue

while [[ $? -ne $total ]]
do
    testNFiles $n $total
    askForValue
done
echo "Well done! There is/are $total file(s) in the current directory"
