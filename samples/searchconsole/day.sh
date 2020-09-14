#i/bin/bash


read -p "start : " startt
read -p "end : " end

echo $startt
echo $end

until [ "$startt" = "$end" ]:
do
	mon=$(echo ${startt} | cut -c5-6)
	day=$(echo ${startt} | cut -c7-8)
	echo 'all  ',$startt ,'mon  ',$mon,'day  ',$day
	startt=$((startt + 1))

	
	if [ $mon -eq "01" ] || [ $mon -eq "03" ] || [ $mon -eq "05" ] || [ $mon -eq "07" ] || [ $mon -eq "08" ] || [ $mon -eq "10" ] 
        then
	    echo 'aaaa'	
            if [ $day -eq "31" ]
            then
                startt=$(($startt - 31))
                startt=$(($startt + 100))
            fi        
        elif [ $mon -eq "04" ] || [ $mon -eq "06" ] || [ $mon -eq "09" ] || [ $mon -eq "11" ] 
        then 
	    echo 'bbbb'	
            if [ $day -eq "30" ]
            then
		echo 'cccc'
                startt=$(($startt - 30))
                startt=$(($startt + 100))
            fi
        elif [ $mon  -eq "02" ]
        then
            if [ $day -eq  "28" ]
            then
                startt=$(($startt - 28))
                startt=$(($startt + 100))
            fi  
        elif [ $mon -eq "12" ]
        then
            if [ $day -eq "31" ]
            then
                startt=$(($startt - 1231))
                startt=$(($startt + 10100))
            fi
        fi	

	

	
	
done	
