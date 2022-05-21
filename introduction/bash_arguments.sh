#!/bin/bash

#We can also work with by just running bash on command line. An example of this: 
#./bash_arguments first second third
echo "Argument one:= $1"
echo "Argument two:= $2"
echo "Argument three:= $3"

#Or all of the arguments
echo "All arguments := $@"

#If you want to use $0, you can reference to the script itself. This is used mostly in self-destructive scripts.
#echo "The file, $=, will be deleted"
#rm -f $0