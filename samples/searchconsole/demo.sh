#!/bin/bash








read -p "Please input start date : " startdate
read -p "Please input end date : " enddate



startmon=$(echo $startdate | cut -c6-7)
endmon=$(echo $enddate | cut -c6-7)
startday=$(echo $startdate | cut -c9-10)
endday=$(echo $enddate | cut -c9-10)

$(echo $startdate | cut -c6-7)=$(echo $startdate | cut -c6-7)+1




maxday ()
{
	if [ "$1" = "01" ] || [ "$1" = "03" ] || [ "$1" = "05" ] || [ "$1" = "07" ] || [ "$1" = "08" ] || [ "$1" = "10" ] || [ "$1" = "12" ]
	then
   	 	return "31"
    
	elif [ "$1" = "04" ] || [ "$1" = "06" ] || [ "$1" = "09" ] || [ "$1" = "11" ]
	then
    		return "30"
	elif [ "$1" = "02" ]
	then
    		return "28"
	fi
}

maxday $startmon
rrr=$?
maxday $endmon
qqq=$?

echo $rrr , $qqq


if [ "$startdate" = "$enddate" ] 
then
    echo "ending"
else
    python3 sc4.py 'sc-domain:exam.kangbao.info' "${startdate}" "${startdate}"
fi

#$ python3 sc4.py 'sc-domain:exam.kangbao.info' '2020-06-01' '2020-08-31'


