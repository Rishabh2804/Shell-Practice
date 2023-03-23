read scriptName
folderPath="./Lab/"

scriptPath=$folderPath$scriptName

# Execute the script
sh $scriptPath

# Add the create message to the script
sh ./addCreateMsg.sh $scriptPath