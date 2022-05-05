#!/bin/bash

echo "welcome to employee wage computation"

isFullTime=1;
isPartTime=2;
empWagePerHour=20;
workingDays=20;
workingHours=100;

for (( day=1; day<=$workingDays; day++ ))
do
	empCheck=$((RANDOM%3));
	case $empCheck in
		$isFullTime)
			empHrs=8;;
		$isPartTime)
			empHrs=4;;
		*)
			empHrs=0;;

	esac

salary=$(($empHrs * $empWagePerHour));
totalSalary=$(($salary * $workingDays));

done

