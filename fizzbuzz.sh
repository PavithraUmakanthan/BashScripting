#!/bin/bash
#first function that prints the return value from the second function
#work: 
#   Step1:the loop will run 100 times, once for each number between 1 and 100
#   Step2:it will pass that number as argument to the second function
#output (print): print the return value from the second function.

#second function that returns each number from 1 to 100 by replacing the number with fizz or buzz or fizzbuzz
#input (parameters) = 1 number from 1 to 100
#work:
#	Step1: check whether the number is divisible by both 3&5.
#	Step2: check whether the number is divisible only by 3.
#	Step3: check whether the number is divisible only by 5.
#output (return) = fizz or buzz or fizzbuzz or number itself

#Test Cases for the second function:
#Case1:
#      input:4
#      output:4
#Case2:
#      input:15
#      output:fizzbuzz
#Case3:
#      input:20
#      output:buzz
#Case4:
#      input:21
#      output:fizz

function second(){
   if (( $1 % 3 == 0 )) && (( $1 % 5 == 0 ));then
       var="fizzbuzz"
   elif (( $1 % 3 == 0 ));then
       var="fizz"
   elif (( $1 % 5 == 0 ));then
       var="buzz"
   else
       var=$n
   fi    
}

function first(){
    for n in $(seq 1 100)
do
    second n
    echo "$var"
done
}
first
