#!/bin/bash

read -p "Enter path for script: " SCRIPTPATH
read -p "Enter script name: " NAME

mkdir -p "$SCRIPTPATH"

ls "$SCRIPTPATH"/"$NAME" 2>/dev/null
if [ $? -eq 0 ]; then
    echo "File already exists. Exiting."
    exit 1
else
echo "Script will be created on path: " $SCRIPTPATH/$NAME
echo "#!/bin/bash\n#\n#Write the code here\n#\n" > $SCRIPTPATH/$NAME
chmod +x $SCRIPTPATH/$NAME
nano $SCRIPTPATH/$NAME
echo "Done"
fi
