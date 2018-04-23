#!/bin/bash

function numberthings {
        i=1
        for f in $@; do                         # $@ represents every argument passed into function
                echo $i: $f
                ((i+=1))
        done
}

numberthings $(ls)              # will number every line of the output of ls

