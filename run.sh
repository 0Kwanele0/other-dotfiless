#!/bin/bash

echo "Happy coding baby!!!"

files=`ls`
folder=''

for file in $files
do
   if [ $file = "main.py" ]
   then
      folder='python'
   elif [ $file = 'main.js' ]
   then
      folder='node'
   elif [ $file = 'main.c' ]
   then
      folder='c'
   fi
done


function cRunner(){
   echo `./a.out`
}

function runner(){
   if [[ $folder = "python" ]]
   then
      echo `python3 main.py`
   elif [[ $folder = "c" ]]
   then
      echo `gcc main.c`
      cRunner
   elif [[ $folder = 'node' ]]
   then
      echo `npm run start`
   else
      echo "Create a file baby!!!"
   fi
}

runner
