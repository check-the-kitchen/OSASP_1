#!/bin/bash
 
      
count=0
for i in $1; do
                if [ -d $i ]; then
                        cd $i
                        myfunc
                        cd ..
                else
                        stat -c "%A %s %n" $i
                        ((count++))
               fi
        done
echo Count of all files $count
