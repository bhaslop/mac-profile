#!/bin/bash -l

if [ -f application.properties ]; then
	grails_version=`cat application.properties | grep grails.version | awk 'BEGIN {FS = "="} ; { print $2 }'`;
	java_version=`cat grails-app/conf/BuildConfig.groovy | grep "grails.project.target.level" | awk 'BEGIN {FS = "="} ; { print $2 }' | tr -d '[[:space:]]' | awk 'BEGIN {FS = "."} ; { print $2 }'`;

	if [ -z "$java_version" ]; then
		java_version=6;
	fi

	echo "Using java $java_version"

	jdk $java_version;

	echo "Using grails $grails_version"

	sdk use grails $grails_version;

	grails -Dhttps.protocols=TLSv1.2 "$@";
else
	echo "not a grails application";
fi
