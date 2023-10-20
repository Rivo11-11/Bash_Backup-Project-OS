#the purpose of the program is to backup the content of the source directory into a subdirectory in a directory called Destination (code will created if not created) that has the name of the current date and time,and check if any update happen in the source directory if true backup the new version into another subdirectory  and if false continue to loop ,if maxbackups acheived program will terminate.

#to check if an update happen or not ,file last.last contain the info of the last version of the directory source and compare it to file new.new if they are different do backup if not do nothing and continue to loop, i use the function diff to compare the 2 files and stored the o/p in a file called tmp.txt,if tmp.txt!='' do backup 


#Heirarchy
6728-Lab2
 |
 v
Source(dir) - Destination(dir) - README.md - tmp.txt -last.last - new.new - bash.sh

Source(dir)
  |
  v
  file a - file b - file c - file d
  
  Destination (dir)
       |
       v
  Subdirectories named with current date and time
       





#no prerequisites
1)open the Makefile
2)Edit the path of the source(first ar)
 YourPath/6728-Lab2/Source
3)Edit the path of the destination(second ar)
YourPath/6728-Lab2/Destination(optional)
4)type make in terminal to run (make sure you are in the directory 6728-Lab2)
