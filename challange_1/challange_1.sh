#!/bin/bash
# A challange for Chapter 2 of Up and Running with Bash Scripts
#
# Use some variable, some command substitution, and some string formatting
#+to make a small summary of some system infromation. Print the result to
#+the screen and write some information to a file

logdate=$(date +"%Y%m%d")
logfile="$logdate"_report.log

red=$(tput setaf 1; tput setab 0)
clear_format=$(tput sgr0)
echo $red"SOME SYSTEM INFORMATION"$clear_format

memory=$(free -m | grep "Mem:" | awk '{ print $2 }')
swap=$(free -m | grep "Swap:" | awk '{ print $2 }')

declare -A infoarray
infoarray["date"]="$(date +"%F")"
infoarray["time"]="$(date +"%R")"
infoarray["memory"]="$memory MB"
infoarray["swap"]="$swap MB"
infoarray["user@host"]="$USER@$(hostname)"
infoarray["uptime"]="$(uptime)"

echo "Date: ${infoarray["date"]}"
echo "Time: ${infoarray["time"]}"
echo "Memory: ${infoarray["memory"]}"
echo "Swap: ${infoarray["swap"]}"
echo "User: ${infoarray["user@host"]}"
echo "Uptime: ${infoarray["uptime"]}"
echo ""

#printf "Date:\t%s\n" ${infoarray["date"]}
#printf "Time:\t%s\n" ${infoarray["time"]}
#printf "Memory:\t%s\n" ${infoarray["memory"]}
#printf "Swap:\t%s\n" ${infoarray["swap"]}
#printf "User:\t%s\n" ${infoarray["user@host"]}
#printf "Uptime:\t%s\n" ${infoarray["uptime"]}

echo "Skrypt: $0"

cat <<- EOF > $logfile
	This report was generated automatically by script "$0".
	If contains some biref summary of system information.
EOF




