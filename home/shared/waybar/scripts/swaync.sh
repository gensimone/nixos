#!/bin/sh

n=$(swaync-client -c)
[ "$n" -gt 0 ] && echo $n
