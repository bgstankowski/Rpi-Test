#!/bin/bash

ip=`hostname -i`

echo "Testing internet connection with "$ip"" '\n'

ping "$ip" -c 3 

if [ $? -eq 0 ]
then
  echo "Successfully pinged"
  exit 0
else
  echo "Could not ping ip" >&2
  exit 1
fi



