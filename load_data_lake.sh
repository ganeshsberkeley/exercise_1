#!/bin/bash

#wget -O $DIR/Hospital_Revised_Flatfiles.zip https://data.medicare.gov/views/bg9k-emty/files/Nqcy71p9Ss2RSBWDmP77H1DQXcyacr2khotGbDHHW_s?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zip


DIR="hospital_compare" 


if [ -d "$DIR" ]
then
	echo "$DIR directory  exists!"
	rm -rf $DIR
else
	echo "$DIR directory not found!"
fi
mkdir $DIR

cp -rf Hospital_Revised_Flatfiles.zip $DIR

echo
echo
echo "Unzipping"
cd $DIR
unzip -o Hospital_Revised_Flatfiles.zip
echo
echo

echo
echo
backup="backup"
if [ -d "$backup" ]
then
	echo "$backup directory  exists!"
else
	echo "$backup directory not found!"
	mkdir $backup
fi
rn_backup="rn_backup"
if [ -d "$rn_backup" ]
then
	echo "$rn_backup directory  exists!"
else
	echo "$rn_backup directory not found!"
	mkdir $rn_backup
fi
echo
echo

echo "Renaming the files to remove blank spaces and replacing with _" 
echo
echo
ls *csv > temp
while read file
do
	cp -rf "$file" $backup
        new_fname=`echo $file | tr " " "_"`
        echo Moving $file $new_fname
        mv -f "$file" $new_fname
	if [ $new_fname == "Medicare_Hospital_Spending_by_Claim.csv" ]
	then
		tail -n +2 $new_fname > temp1
		mv -f temp1 $new_fname
	fi
	cp -rf $new_fname $rn_backup
done < temp
rm temp

echo
echo
echo "We are going to remove the headers"
ls *csv > temp
while read file
do
	echo "Removing Headers for $file"
	if [ $file == "Medicare_Hospital_Spending_by_Claim.csv" ]
	then
		tail -n +3 $file > temp1
	else
		tail -n +2 $file > temp1
	fi
	mv -f temp1 $file
done < temp
rm temp
echo
echo

echo
echo
echo "Move these files into HDFS"
hdfs dfs -mkdir /user/w205/exercise_1
ls *csv > temp
while read file
do
	echo "Moving $file to HDFS"
	hdfs dfs -put $file /user/w205/exercise_1
done < temp
rm temp
echo
echo

echo "Copying the extract_header.pl to renamed backup directory"
cp ../extract_header.pl $rn_backup

echo "Please run the $DIR/$rn_backup/extract_header.pl in the $DIR/$rn_backup Directory"
echo "Copy the hive_base_ddl.sql to whereever you want and run hive -f hive_base_ddl.sql"

cd ..


