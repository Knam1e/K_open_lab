#!/bin/bash

echo "파일 이름을 입력하세요:"
read folder_name

if [ ! -d "$folder_name" ]; then
  mkdir "$folder_name"
fi

cd "$folder_name" || exit


for i in {1..5}; do
  touch "file$i.txt"
done

zip -r "$folder_name.zip" *


cd ..
new_folder_name="extracted_$folder_name"
mkdir "$new_folder_name"


unzip "$folder_name.zip" -d "$new_folder_name"

echo "처리 완료. 파일 생성 완료, 압축 후 추출 완료."
