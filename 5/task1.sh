#!/bin/bash
deleteFile=$1;

if [ -f "$deleteFile" ]; then

  date=$(date +"%d_%m_%Y_%H_%M_%S");
  deleteInfo=".removed-files";
  archivePath=".deleted_files/file.tar.gz";

  filename=$(basename -- "$deleteFile");
  extension="${filename##*.}";
  filename="${filename%.*}";

  readyFileName="${filename}_${date}.${extension}";
  mv $deleteFile $readyFileName;
  tar rf $archivePath $readyFileName;
  rm $readyFileName;

  echo $readyFileName >> $deleteInfo;

else
  echo "Файл не найден";
fi