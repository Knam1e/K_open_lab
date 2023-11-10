#!/bin/bash

# 사용자로부터 몸무게와 신장 입력 받기
echo "몸무게를 입력하세요 (kg):"
read weight

echo "키를 입력하세요 (m):"
read height

# BMI 계산
bmi=$(echo "scale=2; $weight / ($height * $height)" | bc)

# BMI를 바탕으로 체중 상태 판단
if (( $(echo "$bmi < 18.5" | bc -l) )); then
  status="저체중"
elif (( $(echo "$bmi >= 18.5 && $bmi < 23" | bc -l) )); then
  status="정상체중"
elif (( $(echo "$bmi >= 23" | bc -l) )); then
  status="과체중"
else
  status="Invalid BMI"
fi

# 결과 출력
echo "당신의 BMI는 $bmi, 체중 상태는 $status."

