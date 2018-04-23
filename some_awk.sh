#!/bin/bash

awk 'BEGIN {print "Col1\tCol2\tCol3\tCol4\tCol5\tCol6\tCol7";}
{print $1,"\t",$2,"\t",$3,"\t",$4,"\t",$5,"\t",$6,"\t",$7;}
END {print "Report generated successfully---------------------------";
}' some_numbers.txt
