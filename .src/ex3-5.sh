#!/bin/bash

execute_command() {
  local command="$1"
  shift 

  echo "Executing command: $command with options: $@"


  $command "$@"
}


echo "실행할 커맨드를 입력하세요:"
read user_command


echo "추가적인 사항을 입력하세요:"
read user_options


execute_command "$user_command" $user_options
