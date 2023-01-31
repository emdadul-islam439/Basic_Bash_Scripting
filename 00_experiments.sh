#!/usr/bin/bash

### Start Executing this script file with "LESS" command
less	 #Failed!! Output->"Missing filename ("less --help" for help)" 
# Question: I can open execute this file with "less"
# 	    by writing "./00_experiments.sh | less"
#	    This is from command line. But, how can I achieve that
#	    from within this script???



### experimenting to execute another shell script from this file
./05_makeMultipleFileAndRemove.sh  #successfully executed!


### push the PWD into PUSHD
pushd $(pwd) # WORKED!

### pop the latest directory from stack
popd


### output-will be go to a "NULL" place (WOW!!!)
echo "saving ouput of 'ls' into /dev/null: $(ls > /dev/null)"
