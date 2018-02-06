#!bin/bash
baseDir=$(cd "$(dirname $0)"; pwd)
dirList=`ls $baseDir/img/`
for dirItem in $dirList
do
   echo $dirItem
   echo "------"
   if [ ! -d $baseDir/cropimg/$dirItem ];then
	mkdir $baseDir/cropimg/$dirItem
   fi
   filelist=`ls $baseDir/img/$dirItem`
   for file in $filelist
   do
	echo $file
	convert $baseDir/img/$dirItem/$file -crop 1080x500 $baseDir/cropimg/$dirItem/$file
   done
done

exit 1

filelist=`ls $baseDir'/img/conform/'`
for file in $filelist
do
  echo $file
  convert $baseDir/img/conform/$file -crop 1080x500 $baseDir/cropimg/conform/$file
done

echo "--------"

filelist1=`ls $baseDir'/img/inconform/'`
for file in $filelist1
do
  echo $file
  convert $baseDir/img/inconform/$file -crop 1080x500 $baseDir/cropimg/inconform/$file
done
