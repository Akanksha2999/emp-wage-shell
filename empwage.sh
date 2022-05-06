#!/bin/bash

echo "welcome to employee wage computation"

isFullTime=1;
isPartTime=2;
empWagePerHour=20;
workingDays=20;

for ((day=1; day<=$workingDays; day++))
do
	echo "day is $day"
	empCheck=$((RANDOM%3));
	case $empCheck in
		$isFullTime)
			empHrs=8;;
		$isPartTime)
			empHrs=4;;
		*)
			empHrs=0;;

	esac

dailyWage=$(( $empHrs * $empWagePerHour ));
totalWage=$(( $dailyWage * $workingDays ));

done




