#!/bin/bash

database="DB.txt"

touch "$database"

while true; do
  echo "이름을 입력하세요:"
  read name

  echo "휴대폰 번호를 입력하세요:"
  read phone_number

  echo "$name, $phone_number" >> "$database"

  echo "$database에 기록되었습니다."


  echo "기록을 더 하실건가요? (예/아니요)"
  read choice

  case "$choice" in
    [Nn]*)
      break  
      ;;
    *)
      continue  
      ;;
  esac
done

echo "작성 완료."
