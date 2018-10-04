#! /usr/bin/sh

response=$(curl --write-out %{http_code} -s -o "/dev/null" http://localhost/index.html)

if [ $response -eq 200 ] ; then
exit 0
else
# Checks failed - return status 1
exit 1
fi
