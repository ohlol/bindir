#!/bin/sh
#
# Performs a simple  HEAD request. Accepts hostname and optional port.

HOST=$1

if [ "x$HOST" = "x" ]
then
	echo "What host?"
	exit 1
fi

if [ "x$PORT" = "x" ]
then
	PORT=80
fi

(echo "HEAD / HTTP/1.0"; echo "") | nc $HOST $PORT
