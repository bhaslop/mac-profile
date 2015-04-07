#!/bin/bash

function j6 {
	export JAVA_HOME="/Library/Java/JavaVirtualMachines/1.6.0_65-b14-462.jdk/Contents/Home/";
	echo "JAVA 6 applied to this shell";
}

function j7 {
	export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home";
	echo "JAVA 7 applied to this shell";
}
