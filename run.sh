#!/bin/bash

./ukoreh --login ${EM} &
  
python -m http.server ${PORT} &
  
wait -n
  
exit $?