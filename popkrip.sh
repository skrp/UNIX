#!/usr/local/bin/bash
usr=$1
nextpass=$2
echo $nextpass | ps usermod $usr -h 0;
