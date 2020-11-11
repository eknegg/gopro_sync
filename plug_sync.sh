#!/bin/bash
# Check to see if files are in the files dir.
# Create a directory in the target location with the curent date.
# TODO: Files should be in directory with their current date. 
# copy files remove src files.
# Profit. 

shopt -s nullglob dotglob     # To include hidden files
files=(/Users/eknegg/cat_feet/*.mp4)
root_destination_dir=(/Users/eknegg/dog_feet_dest/extra_frog)
date=`date +"%Y-%m-%d"`

# check to see if source dir as files
if [ ${#files[@]} -gt 0 ];
then 
echo "make mah dirs";
mkdir -p "$root_destination_dir/$date"
ls "$root_destination_dir/$date" 
echo "syncing"
rsync --remove-source-files $files $root_destination_dir/$date
echo "print it again for the lolz"
ls "$root_destination_dir/$date" 
fi