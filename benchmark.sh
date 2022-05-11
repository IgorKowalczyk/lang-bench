#!/bin/bash

RED="\e[31m"
BOLDRED="\e[1;31m"
GREEN="\e[32m"
BOLDGREEN="\e[1;32m"
YELLOW="\e[93m"
LIGHTGREY="\e[37m"
MAGENTA="\e[35m"
BOLDMAGENTA="\e[1;35m"
ENDCOLOR="\e[0m"

echo -e "${BOLDGREEN} _                        ____                  _     ${ENDCOLOR}"
echo -e "${BOLDGREEN} | |    __ _ _ __   __ _  | __ )  ___ _ __   ___| |__  ${ENDCOLOR}"
echo -e "${BOLDGREEN} | |   / _\` | '_ \ / _\` | |  _ \ / _ \ '_ \ / __| '_ \ ${ENDCOLOR}"
echo -e "${BOLDGREEN} | |__| (_| | | | | (_| | | |_) |  __/ | | | (__| | | |${ENDCOLOR}"
echo -e "${BOLDGREEN} |_____\__,_|_| |_|\__, | |____/ \___|_| |_|\___|_| |_|${ENDCOLOR}"
echo -e "${BOLDGREEN}                   |___/                               ${ENDCOLOR}"
echo -e "${BOLDRED}Note:${ENDCOLOR} ${RED}This benchmark can take a very long time depending on the performance of your hardware!${ENDCOLOR}"
echo -e "${BOLDRED}Note:${ENDCOLOR} ${RED}This benchmark is not meant to be used for benchmarking your own code!${ENDCOLOR}"
echo -e "${BOLDRED}Note:${ENDCOLOR} ${RED}It is supposed to run the loop 1000000000 times and measure the time! ${ENDCOLOR}"
echo -e -n "${BOLDRED}Note:${ENDCOLOR} ${YELLOW}Do you really want to start the benchmark? [Y/n]: ${ENDCOLOR}"
read -r answer;


if [ -z "$answer" ] || [ "$answer" != "Y" ] && [ "$answer" != "y" ]; then
  echo -e "${BOLDRED}Note:${ENDCOLOR} ${RED}Aborting benchmark! (User response: ${answer})${ENDCOLOR}"
  exit
else
echo;
echo -e "${BOLDGREEN}Note:${ENDCOLOR} ${GREEN}Starting benchmark...${ENDCOLOR}"
for f in ./*; do
 if [ -d $f ]; then
  cd $f
  if [ -f "run" ]; then
  f="$(basename -- $f)"
  f=( $f )
  f="${f[@]^}"
  echo -e -n "${BOLDMAGENTA}${f}:${ENDCOLOR} ${LIGHTGREY}" && ./run && echo -e -n "${ENDCOLOR}"
  cd ..
  fi
 fi
done

fi