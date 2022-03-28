#!/bin/bash
 
myfunc() {
        for i in *; do
                if [ -d $i ]; then
                        cd $i
                        myfunc
                        cd ..
                else
                        stat -c "%A %s %n" $i
                        ((count++))
                fi
        done
}
 
count=0
cd $1
myfunc
echo Count of all files $count
