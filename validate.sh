#! /usr/bin/sh

response=$(curl --write-out %{http_code} -s -o "/dev/null" http://localhost/indexx.html)

if [ $response -eq 200 ] ; then
exit 0
else
# Checks failed - return status 1
echo "The checks failed - index.html not available" >&2
exit 1
fi
