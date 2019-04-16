#!/bin/bash
# Author: Hanzhang Bai
# Last updates 15 Mar 2019
# Copyright sxht4(2019) under MIT Licence
dt=$(date '+%d %h %Y %H:%M:%S');
echo "INFO: Script started at $dt"
if [ -e "parse" ];
then
echo -e '\e[33mWARNING: Cleaning up "parse".\e[0m'
rm -rf parse
fi
if [ -e "parseoptimised" ];
then
echo -e '\e[33mWARNING: Cleaning up "parseoptimised".\e[0m'
rm -rf parseoptimised
fi
run(){
echo "INFO: Running as '$1'"
echo "INFO: If user did not enter any input"
echo "******************************************"
./$1
echo "INFO: Getting info for this program"
echo "******************************************"
./$1 --info
echo "Process exited with exit code $?"
echo "INFO: Parse mode for this program. DRY RUN"
echo "******************************************"
#./parse --parse /etc/httpd/conf/httpd.conf
./$1 --parse sampleFile.conf
echo "Process exited with exit code $?"
echo "INFO: Generate new file mode for this program. DRY RUN"
echo "******************************************"
./$1 --generate-files sample.conf mikudayo.hbai.me
echo "Process exited with exit code $?"
}
echo "Compiling without optimisation..."
STARTTIMEC=`date +%s.%N`
g++ -std=c++11 -o parse parser.cpp
echo "Process exited with exit code $?"
ENDTIMEC=`date +%s.%N`
TIMEDIFFC=`echo "$ENDTIMEC - $STARTTIMEC" | bc | awk -F"." '{print $1"."substr($2,1,11)}'`
echo -e "INFO: Compiles successifully? \c"
if [ -e "parse" ];
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
run parse
rm -rf parse
echo "INFO: Compiling with -O2 optimisation..."
STARTTIMEO=`date +%s.%N`
g++ -std=c++11 -o parseoptimised -O2 parser.cpp
echo "INFO: Process exited with exit code $?"
ENDTIMEO=`date +%s.%N`
TIMEDIFFO=`echo "$ENDTIMEO - $STARTTIMEO" | bc | awk -F"." '{print $1"."substr($2,1,11)}'`
echo -e "INFO: Compiles successifully? \c"
if [ -e "parseoptimised" ];
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
run parseoptimised
rm -rf parseoptimised