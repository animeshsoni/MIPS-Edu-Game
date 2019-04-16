#!/bin/bash
# Author: Hanzhang Bai
# Last updates 15 Mar 2019
# Copyright sxht4(2019) under MIT Licence

dt=$(date '+%d %h %Y %H:%M:%S');
echo "INFO: Script started at $dt"
if [ -e "interpreter" ];
then
echo -e '\e[33mWARNING: Cleaning up "interpreter".\e[0m'
rm -rf interpreter
fi
if [ -e "interpreteroptimised" ];
then
echo -e '\e[33mWARNING: Cleaning up "interpreteroptimised".\e[0m'
rm -rf interpreteroptimised
fi
run(){
echo "INFO: Running as '$1'"
echo "INFO: Reading 'addi.mips.assembly'"
echo "******************************************"
./$1 addi.mips.assembly output.mips.assembly
echo "******************************************"
echo "Process exited with exit code $?"
}
echo "Compiling without optimisation..."
STARTTIMEC=`date +%s.%N`
g++ -std=c++11 -o interpreter interpreter.cpp
echo "Process exited with exit code $?"
ENDTIMEC=`date +%s.%N`
TIMEDIFFC=`echo "$ENDTIMEC - $STARTTIMEC" | bc | awk -F"." '{print $1"."substr($2,1,11)}'`
echo -e "INFO: Compiles successifully? \c"
if [ -e "interpreter" ];
then
echo -e "\e[32mYes\e[0m\c"
echo ", and it takes $TIMEDIFFC second(s) to compile"
echo -e "INFO: Running Program\n \n"
else
echo -e "\e[31mNo\e[0m"
echo "ERROR: Failed to compile, exiting..."
echo "You may refer to error messages from g++ to fix the problem"
exit 1
fi
echo "INFO: Compiling with -O2 optimisation..."
STARTTIMEO=`date +%s.%N`
g++ -std=c++11 -o interpreteroptimised -O2 interpreter.cpp
echo "INFO: Process exited with exit code $?"
ENDTIMEO=`date +%s.%N`
TIMEDIFFO=`echo "$ENDTIMEO - $STARTTIMEO" | bc | awk -F"." '{print $1"."substr($2,1,11)}'`
echo -e "INFO: Compiles successifully? \c"
if [ -e "interpreteroptimised" ];
then
echo -e "\e[32mYes\e[0m\c"
echo ", and it takes $TIMEDIFFO second(s) to compile"
echo -e "INFO: Running Program\n \n"
else
echo -e "\e[31mNo\e[0m"
echo "ERROR: Failed to compile, exiting..."
echo "You may refer to error messages from g++ to fix the problem"
exit 1
fi
run interpreter
run interpreteroptimised
rm -rf interpreter
rm -rf interpreteroptimised