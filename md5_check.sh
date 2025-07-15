#!/bin/bash
# md5_check.sh
# This script checks the MD5 checksum of a file against a provided checksum.
read -p "Enter path for control: " file_path
if [ ! -d "$file_path" ]; then
    echo "Directory does not exist: $file_path"
    exit 1
fi
read -p "Enter path for result file: " path_result
mkdir -p $path_result
name_file=$path_result/$(basename "$file_path").md5
echo "File with MD5 checksum will be saved as: $name_file"
for var in "$file_path"/*; do
    if [ -f "$var" ]; then
        md5sum "$var" >> "$name_file"
    else
        echo "Skipping non-file: $var"
    fi
done
echo "MD5 checksums have been saved to $name_file"
echo "To verify the checksums, use the command: md5sum -c $name_file"
echo "Done."
exit 0
# End of md5_check.sh

