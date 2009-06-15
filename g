#!/bin/sh
#
# Performs a simple GET request. Accepts hostname, optional port and optional
# request path.

HOST=$1
PORT=$2
REQ=$3

if [ "x$HOST" = "x" ]
then
	echo "What host?"
	exit 1
fi

if [ "x$PORT" = "x" ]
then
	PORT=80
fi

if [ "x$REQ" = "x" ]
then
	REQ="/"
fi

RESP=`(echo "GET $REQ HTTP/1.0"; echo "") | nc $HOST $PORT | head -1`

echo $RESP
