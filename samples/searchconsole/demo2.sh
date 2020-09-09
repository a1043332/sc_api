#!/bin/bash

read -p "start : " startdate
read -p "end : " enddate












until [ "$startdate" = "$enddate" ]
do
	year=$(echo ${startdate} | cut -c1-4)
	mon=$(echo ${startdate} | cut -c5-6)
	day=$(echo ${startdate} | cut -c7-8)
	xxx=$(echo $year-$mon-$day)
	python3 sc4.py 'sc-domain:exam.kangbao.info' "${xxx}" "${xxx}"
	startdate=$(($startdate+1))


done
