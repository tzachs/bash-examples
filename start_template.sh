#!/bin/bash

# THIS IS TEMPLATE FOR SCRIPT WITH COMMAND LINE OPTIONS

did_something () {
	DID_SOMETHING="true"
}

print_usage () {
	did_something
	echo "--help"
}

DID_SOMETHING="false"

PRINT_USAGE="false"

while (( "$#" )); do
	OPT=$1
	shift
	
	case "$OPT" in
		--help)
			PRINT_USAGE="true"
		;;
		*)
			echo "Unsupported $OPT"
	esac
done

if [ "$PRINT_USAGE" = "true" ]; then
	print_usage
fi

if [ "$DID_SOMETHING" = "false" ]; then
	print_usage
fi
