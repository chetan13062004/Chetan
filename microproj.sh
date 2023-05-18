#!/bin/bash
i="0"
while [ $i -lt 100 ]
do
gcc project.c -o mp
./mp
read opt1

#echo "Enter the opt1"
#read opt1

if [ $opt1 == 1 ]
then
 echo "List all files and directories here.."
 echo "Showing all fiels and directories.."
 sleep 3
 echo "Loading.."
 sleep 3
 echo "*********output************"
 ls
echo " "

elif [ $opt1 == 2 ]
then
 echo "Create New files here..."
 echo "Which type of file you want to create !"
 echo "1 .c"
 echo "2 .sh"
 echo "3 .txt"
 echo "Enter your choice from 1-3"
 read filechoice

if [ $filechoice == 1 ]
then
echo "Enter File name without .c extension"
read filename
echo $filename.c
echo "*********output************"
echo "File Created successfully"

echo " "

elif [ $filechoice == 2 ]
then
echo "Enter file name without .sh extension"
read  filename2
echo  $filename2.sh
echo "**********output************"
echo "File created successfully"
echo  " "

elif [ $filechoice == 3 ]
then
echo "Enter file name without .txt extension"
read filename3
echo $filename3.txt
echo "**********output**********"
echo "File created successfully"
fi
echo " "

elif [ $opt1 == 3 ]
then
echo "Delete existing file"
echo "Enter the file name you want to delete"
read delfile
echo "**********output**********"

if [ -f "$delfile" ]
then
rm $delfile
echo "Deleted file successfully"
echo " "
else
echo "File does not exist"
echo " "
fi

elif [ $opt1 == 4 ]
then
echo "**********output**********"
echo "Rename files here..."
echo "Enter old name  of file with extension "
read old
echo "Checking for file.."
sleep 3

if [ -f "$old" ]
then
echo "ok file exist"
echo "Now Enter new name for file with extension"
read new
mv $old $new
echo "successfully rename"
echo "File with new name"
else
echo "$old file does not exist"
fi
echo " "

elif [ $opt1 == 5 ]
then
echo "Edit  file content here.."
echo "Enter a file name with extension"
read edit
echo "**********output**********"
echo "checking for file..."s
sleep 3
if [ -f "$edit" ]
then
echo "Open file"
sleep 3
nano $edit
echo " "
else
echo "$edit  file does not exist"
echo " "
fi

elif [ $opt1 == 6 ]
then
echo "search files here"
echo "Enter file name with extension to search"
read f
echo "**********output**********"
if [ -f "$f" ]
then
echo "Searching for $f file "
echo "file found"
file /home $f
echo " "
else
echo "file does not exist"
fi
echo " "

elif [ $opt1 == 7 ]
then
echo "Details of file here.."
echo "Enter file name here.."
read detail
echo "**********output**********"
echo "Checking for file..."
sleep 4

if [ -f "$detail" ]
then
echo "Loading properties.."
stat $detail

else
echo "$detail file does not exist"
fi

echo " "


elif [ $opt1 == 8 ]
then
echo "View content of file here.."
echo "Enter file name.."
read readfile
echo "**********output**********"
if [ -f "$readfile" ]
then
echo "Showing file content"
sleep 3
cat $readfile
else
echo "$readfile does not exist"
fi
echo " "

elif [ $opt1 == 9 ]
then
echo "sort files content here.."
echo "Enter file name with extension to sort"
read sortfile
echo "**********output**********"
if [ -f "$sortfile" ]
then
echo "sorting file content"
sleep 3
sort $sortfile
else
echo" $sortfile  file does not exist"
fi
echo  " "


elif [ $opt1 == 10 ]
then
echo "**********output**********"
echo "List of all Directories here.."
echo "Showing all Directories "
echo "Loading"
sleep 3
ls -d */
echo " "

elif [ $opt1 == 11 ]
then
echo "List of files with particular extensions here.."
echo "which type of file list you want to see"
echo "1- .c"
echo "2- .sh"
echo "3- .txt"
echo "Enter your choice from 1-3"
read extopt

echo "**********output**********"
if [ $extopt == 1 ]
then
echo "List of .c files shown below"
echo "Loading "
sleep 3
ls *.c

elif [ $extopt == 2 ]
then
echo "List of all .sh files below"
echo "Loading"
sleep 3
ls *.sh

elif [ $extopt == 3 ]
then
echo "list of all .txt file below"
echo "loading"
sleep 3
ls *txt

else
echo "Invalid input"
fi

echo " "

elif [ $opt1 == 12 ]
then
echo "**********output**********"
echo "Total number of directories here"
echo "Loading all directories"
sleep 3
echo "Counting"
sleep 3
echo "Number of directories are"
echo */ | wc -w

echo " "

elif [ $opt1 == 13 ]
then
echo "**********output**********"
echo "Total number of files in current Directory here"
echo "Loading all files"
sleep 3
echo "counting"
sleep 3
echo "Number of files are :"
ls -l | grep -v 'total' | grep -v '^d' | wc -l
echo " "

elif [ $opt1 == 14 ]
then
eecho "**********output**********"
echo "Sort files here..."
echo "your request of sorting files is Generated"
echo "Sorting"
sleep 3
ls | sort
echo " "

elif [ $opt1 == 0 ]
then
echo "Bye"
echo "Exit Successfully...."
else
echo "Invalid Input Given By You"
echo " "

fi
done
