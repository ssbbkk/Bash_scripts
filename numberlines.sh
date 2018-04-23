#!/bin/bash

function numberlines {
	i=1
	for f in $@; do
		echo $i: $f
		((i+=1))	
	done
}

numberlines $@
