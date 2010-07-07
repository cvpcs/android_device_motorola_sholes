#!/bin/bash

function print_usage () {
    echo "Usage:"
    echo "  ${0} file_list extract_from extract_to"
    echo "    file_list - a list of files to extract"
    echo "    extract_from - one of:"
    echo "      adb - extract from adb"
    echo "      dir - a directory to extract from"
    echo "      file - a zip file to extract from"
    echo "    extract_to - a directory to extract to (will be created)"
}

function extract_file () {
    from_file="$1"
    from_loc="$2"
    to_loc="$3"
}

FILE_LIST=$1
EXTRACT_FROM=$2
EXTRACT_TO=$3

# check file list
if [ ! -e "${FILE_LIST}" ] ; then
    print_usage
    echo ""
    echo "You must specify a list file"
    exit 1
fi

# get our list of files
FILES=$(cat "${FILE_LIST}")

# make our extraction directory
mkdir -p "${EXTRACT_TO}"

# extract!
for file in ${FILES}; do

done
