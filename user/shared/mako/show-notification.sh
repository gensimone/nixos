#!/bin/sh

makoctl history | grep Notification | cut -d ':' -f 2-
