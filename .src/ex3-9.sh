#!/bin/bash

database="DB.txt"

touch "$database"

echo "검색할 이름을 입력하세요:"
read search_name

result=$(grep "^$search_name," "$database")

if [ -n "$result" ]; then
  echo "검색 결과: $result"
else
  echo "해당 이름의 정보를 찾을 수 없습니다."
fi
