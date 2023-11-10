#!/bin/bash
echo "첫 번째 숫자를 입력하세요:"
read num1

echo "두 번째 숫자를 입력하세요:"
read num2

echo "연산자를 입력하세요 (+ or -):"
read operator

if [ "$operator" == "+" ]; then
  result=$((num1 + num2))
  operation="addition"
elif [ "$operator" == "-" ]; then
  result=$((num1 - num2))
  operation="subtraction"
else
  echo "Invalid operator. Please enter + or -."
  exit 1
fi

echo "결과 $num1 $operator $num2 ($operation): $result"
