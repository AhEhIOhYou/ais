#!/bin/bash
fileInfo=$1

archivePath=".deleted_files/file.tar.gz";
deleteInfo=".removed-files";

if [ -n "$fileInfo" ]; then
  matchesFile=$(cat "$deleteInfo" | grep ".*${fileInfo}.*");

  for file in $matchesFile; do
    tar -xvf "$archivePath" "$file";
    tar --delete -f "$archivePath" "$file";

    extension="${file##*.}";
    filename="${file%.*}";
    clearName=$(echo $filename | rev  | cut -c 21- | rev);
    readyFileName="${clearName}.${extension}";

    mv $file $readyFileName;

    sed -i "/$file/d" "$deleteInfo";

  done
else
  echo "Данные файла?";
fi