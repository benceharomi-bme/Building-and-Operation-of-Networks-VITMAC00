#! /bin/bash

count=0
timeout=300

function leave_some_space {
  echo
  echo
  echo
}

# Wait for the file to be copied in the right location
while [[ ! -f $FNAME && "$count" -lt "$timeout" ]];
do
  cowsay $WAITFILE_SENTENCE > $DEST
  sleep $SLEEP
  count=$((count+$SLEEP))
done

# If the file is not there after the timeout, bail out
if [ "$count" -eq "$timeout" ];
then
  leave_some_space
  cowsay $BAILOUT_SENTENCE > $DEST
  exit 0
fi

# If I have the file, read it line by line and cowsay
while read -r line
do
  leave_some_space
  cowsay $line > $DEST
  sleep $SLEEP
done < $FNAME
