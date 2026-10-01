#!/bin/bash


host=$1
start=$2
end=$3
mode=$4


if [ "$1" = "--help" ];
then
echo "usage: ./portpeek.sh <host> <start> <end> [open] "
echo ""
echo "Examples:"
echo  "./portpeek.sh localhost 1 1024"
echo  "./portpeek.sh localhost 1 1024 open"
exit 0
fi




if [ $# -eq 3 ] || [ "$4" = "open" ]; 
then
 if ! getent ahosts $host > /dev/null; then
        echo "oops, i can't find '$host'. check the spelling."
	 exit 1
 fi

echo "====portpeek===="
echo "target : $host"
echo "range : $start - $end"
echo ""
echo "scanning..."

for port in $(seq $start $end); do
if nc -z -w 1 $host $port 2>/dev/null; then
	echo "port $port is open"
elif [ "$mode" != "open" ]; then
       echo "port $port is closed"
 fi
    done

echo ""
echo "done"

else

echo "use --help for more infos "
fi
