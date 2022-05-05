#!/bin/bash

echo "welcome to employee wage computation"

isFullTime=1;
empWagePerHour=20;

empCheck=$((RANDOM%2));

case $empCheck in
	$isFullTime)
		empHrs=8;;
	*)
		empHrs=0;;

esac

salary=$(($empHrs * $empWagePerHour));
