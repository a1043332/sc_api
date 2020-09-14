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
	

        if [ $mon -eq "01" ] || [ $mon -eq "03" ] || [ $mon -eq "05" ] || [ $mon -eq "07" ] || [ $mon -eq "08" ] || [ $mon -eq "10" ]
        then
            
            if [ $day -eq "31" ]
            then
                startdate=$(($startdate - 31))
                startdate=$(($startdate + 100))
            fi
        elif [ $mon -eq "04" ] || [ $mon -eq "06" ] || [ $mon -eq "09" ] || [ $mon -eq "11" ]
        then
            
            if [ $day -eq "30" ]
            then
                
                startdate=$(($startdate - 30))
                startdate=$(($startdate + 100))
            fi
        elif [ $mon  -eq "02" ]
        then
            if [ $day -eq  "28" ]
            then
                startdate=$(($startdate - 28))
                startdate=$(($startdate + 100))
            fi
        elif [ $mon -eq "12" ]
        then
            if [ $day -eq "31" ]
            then
                startdate=$(($startdate - 1231))
                startdate=$(($startdate + 10100))
            fi
        fi
done
