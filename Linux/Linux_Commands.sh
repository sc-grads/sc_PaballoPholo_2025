#!/bin/bash
echo "My Linux Cheat-Sheet"

# BASIC COMMANDS
# -------------------
echo [argument] #Displays arguments to the screen.
pwd             #Displays current working directory
cd              #Changes the currecnt directory
ls              #Lists directory contents
cat             #Concatenates and displays files
man             #Displays the online manual, Type 'q' to quit viewing the manual page
clear           #Clears the screen

# FISHING: ENVIRONMENTAL VARIABLES - Storage location that has a name and a value(Usually uppercases)
# -------------------
echo $PATH          #-> Access the contents in a Path environment that Contains a list of directories
which cat           #-> Locate a cat command
--help or -h        #-> To get help
man -k SEARCH_TERM  #-> Searching for manual pages  
 
# DIRECTORY SHOTCUTS
# -------------------
 .  #This directory
 .. #The parent directory
 cd #Change to the previous directory

#Creating and Removing Directories
# -------------------
mkdir [-p] directory   #Create a directory.
rmdir [-p] directory   #Remove a directory.
rm -rf directory       #Recursively removes directory

# LISTING FILES [Working with ls <options>]
# -------------------
ls -a       #List all files, including hidden files.
ls --color  #List files with colorized output
ls -d       #List directory names, not contents.
ls -l       #Use the long listing format.
ls -r       #Reverse the order
ls -R       #List files recursively.
ls -t       #Sort by time, most recent first
ls -latr    #Long listing including all files reverse sorted by time.

#The tree Command: Similar to ls -R, but creates visual output.
tree -d #List directories only
tree -C #Colorize output.

#Displaying the Contents of Files
# -------------------
cat file            #Display the contents of file.
more file           #Browse through a text file.  
less file           #More features than more.
head file           #Output the beginning (or top) portion of file.
tail file Output    #the ending (or bottom) portion of file
tail -f file        #Follow the file - Displays data as it is being written to the file.

#Removing files
# -------------------
rm file     #Remove file.
rm -r dir   #Remove the directory and its contents recursively.
rm -f file  #Force removal and never prompt for confirmation

#Copying files
# -------------------
cp source_file destination_file #Copy source_file to destination_file.

#cp otions
cp -i #Run in interactive mode
cp -r #Copy src_directory recursively to destination. 

#Moving and Renaming Files
# -------------------
 mv # Move or rename files and directories.

 #SortingData
 sort file      #Sort text in file
 sort -r file   #Sort in reverse order
 sort -u file   # Sort unique
 sort -k F file #Sort by key.  F is the field number

#Aliases
# -------------------
alias [name[=value]] #List or create aliases. Use name=value to create a new alias
unalias name #Remove the “name” alias
unalias -a #Remove all aliases