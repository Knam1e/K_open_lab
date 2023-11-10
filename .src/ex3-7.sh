#!/bin/bash
echo "파일 이름을 입력하세요:"
read file_name

mkdir "$file_name"

cd "$file_name" || exit


for i in {1..5}; do
  touch "file$i.txt"
done


for i in {1..5}; do
  subfolder_name="$file_name-$i"
  mkdir "$subfolder_name"
  ln -s "../file$i.txt" "$subfolder_name/file$i.txt"
done

echo "처리 완료. 파일과 폴더가 생성되었습니다."
