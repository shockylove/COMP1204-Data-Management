#!/bin/bash

# 1 Set 2 varialbes to extract data from KML,and save as CSV

kml_input=$1
csv_output=$2

echo "Timestamp,Latitude,Longitude,MinSeaLevelPressure,MaxIntensity" > $2
	 
echo "Converting report.kml -> storm_info.csv..."

# 2 Collect the 5 required data
# 	Cut off useless parts then add unit at the end of each line

count=$(grep -E -c "<lat>" $1)
grep "<lat>" $1 | cut -d ">" -f 2 | cut -d "<" -f 1 |  sed "s/$/& N/g" >lat.txt
grep "<lon>" $1 | cut -d ">" -f 2 | cut -d "<" -f 1 | sed "s/$/& W/g" > lon.txt
grep "<dtg>" $1 | cut -d ">" -f 2 | cut -d "<" -f 1 > ts.txt
grep "<intensity>" $1 | cut -d ">" -f 2 | cut -d "<" -f 1 | sed "s/$/& knots/g" > inten.txt
grep "<minSea.*>" $1 | cut -d ">" -f 2 | cut -d "<" -f 1 | sed "s/$/& mb/g" > press.txt

#lat=$(grep "<lat>" $1 | cut -d ">" -f 2 | cut -d "<" -f 1 |  sed "s/$/& N/g") 
#lon=$(grep "<lon>" $1 | cut -d ">" -f 2 | cut -d "<" -f 1 | sed "s/$/& W/g") 
#tim=$(grep "<dtg>" $1 | cut -d ">" -f 2 | cut -d "<" -f 1 )
#inte=$(grep "<intensity>" $1 | cut -d ">" -f 2 | cut -d "<" -f 1 | sed "s/$/& knots/g") 
#press=$(grep "<minSea.*>" $1 | cut -d ">" -f 2 | cut -d "<" -f 1 | sed "s/$/& mb/g")

# 3 Paste data in order, output final data as a CSV file
#echo "$timestamp,$lat,$lon,$pressure,$intensity">>$2
paste -d ',' ts.txt lat.txt lon.txt press.txt inten.txt >>$2

echo "Done!"
