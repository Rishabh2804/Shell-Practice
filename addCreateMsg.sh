# Write a script to add a "Created by" message at end of script which executes this script.

# Path: Shell\addCreateMsg.sh

filePath=$1

myName="Rishabh Gupta"
currTime=$(date +"%d-%m-%Y %H:%M:%S %Z")

createMsg="# Created by : $myName $currTime"

echo $createMsg >>$filePath
