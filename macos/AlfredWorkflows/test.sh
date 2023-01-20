#!/bin/bash

if [[ 0 -lt "$1" ]] && [[ 100 -ge "$1" ]]  ;then
  echo 'nice'
else
  echo 'Error input: enter 0-100 number'
fi
