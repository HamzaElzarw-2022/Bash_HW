#!/bin/bash
echo Input calculation operand:
read operand


echo enter the first number:
read x

if [ "$operand" != "!" ]; then
  echo enter the second number:
  read y
fi

factorial() {
  local num=$1

  if [ $num -le 1 ]; then
    echo 1
  else
    prev=$(factorial $((num - 1)))
    echo $((num * prev))
  fi
}

case $operand in
  "+")
   echo $(( x + y ))
   ;;
 "-")
   echo $(( x - y ))
   ;;
   "*")
   echo $(( x * y ))
   ;;
   "/")
   echo $(( x / y ))
   ;;
   "%")
   echo $(( x % y ))
   ;;
   "!")
   echo $(factorial $x)
   ;;
 *)
   echo "invalid operator"
   ;;
esac