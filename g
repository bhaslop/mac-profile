#!/bin/bash -l


if [ -f application.properties ]; then
	version=`cat application.properties | grep grails.version | awk 'BEGIN {FS = "="} ; { print $2 }'`

	gvm use grails $version

	grails "$@"
else
	echo "not a grails application"
fi


