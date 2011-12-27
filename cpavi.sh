#!/usr/bin/env bash

CPFROM=/tmp/from/
CPTO=/tmp/to/
FILTER="*.avi"
RSYNC=/usr/bin/rsync
ZENITH=/usr/bin/zenith

HELLO_STR="Copying "$FILTER" files from "$CPFROM" to "$CPTO
RSYNC_CMD="${RSYNC} -v ${CPFROM}${FILTER} ${CPTO}"
RETURN_STR=$($RSYNC_CMD)
INFO_STR="${HELLO_STR}\n${RSYNC_CMD}\n${RETURN_STR}"
zenity --info --text="$INFO_STR"
