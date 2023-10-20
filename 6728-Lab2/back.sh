#!/bin/bash
# source=/home/rafik/Document/Source
# destination=/home/rafik/Document/Destination

arguments=('$@')

source=$1
destination=$2



if [ ! -d "$destination" ]; 
then
  mkdir -p "$destination"
  echo "Created Successfully"
fi
 maxbackup=$4 ; 
 backup=0
  
 ls -lR "$source" > last.last
 touch new.new 

diff -q  new.new last.last > tmp.txt
var="`cat tmp.txt`";


while [ "$backup" -ne "$maxbackup" ] ;
do
sleep $3
ls -lR "$source" > last.last
diff -q  new.new last.last > tmp.txt
var="`cat tmp.txt`";
if [ -d "$source" ]; 
then

# if the 2 files are not equal then do backup
if [ "$var" != '' ]; 
then
echo "$backup"
newDest=$destination/$(date +%F_%H-%M-%S)
mkdir -p "$newDest"
for file in `ls $source` 
do

    cp  "$source"/* "$newDest"
    
done
# update the counter,update file 'new',
cp last.last new.new
echo "Added"
((backup++))
fi
# # keep track of the update
# ls -lR "$source" > last.last
# diff -q  new.new last.last > tmp.txt
# var="`cat tmp.txt`";
fi
done
echo "MaxBackup Acheived"
truncate -s 0 new.new
 



