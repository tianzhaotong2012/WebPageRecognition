#!bin/bash
filelist=`ls /home/map/WebPageRecognition/img/conform/`
for file in $filelist
do
  echo $file
  convert /home/map/WebPageRecognition/img/conform/$file -crop 1080x500 /home/map/WebPageRecognition/cropimg/conform/$file
done

echo "--------"

filelist1=`ls /home/map/WebPageRecognition/img/inconform/`
for file in $filelist1
do
  echo $file
  convert /home/map/WebPageRecognition/img/inconform/$file -crop 1080x500 /home/map/WebPageRecognition/cropimg/inconform/$file
done
