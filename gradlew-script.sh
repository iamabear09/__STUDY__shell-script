#!/bin/sh

echo "현재 스크립트: $0"
echo " "
echo " "


echo "app_path 프로그램 실행 정보 저장 ex) ./script.sh"
app_path=$0
echo "app_path: $app_path"
echo " "
echo " "


echo "만약 현재 실행한 script가 link파일인지 확인"
if [ -h "$app_path" ]
then
	echo "$app_path is link? : Yes!"
fi
echo " "
echo " "

echo "app_path에서 경로 정보 추출 
참고) ## 가장 길게 매칭, && 뒤에서 부터 가장 길게 매칭"
APP_HOME=${app_path%"${app_path##*/}"}
echo "APP_HOME: $APP_HOME"
echo " "
echo " "


result=$( echo "echo result" )
echo $result
echo " "
echo " "

if [ -h "$app_path" ]
then
	ls=$( ls -ld "$app_path" )
	echo "ls: $ls"
	link=${ls#*' -> '}
	echo "link: $link"
fi
echo " "
echo " "


case $link in             #(
	/*)  app_path=$link ;; #(
	*)   app_path=$APP_HOME$link ;;
esac

echo "app_path: $app_path"
echo " "
echo " "

APP_BASE_NAME=${0##*/}
echo "APP_BASE_NAME: $APP_BASE_NAME"
echo " "
echo " "

#echo "사용자 홈 위치로 변경"
#APP_HOME=~

cd "${APP_HOME:-./}"
echo "pwd 실행"
pwd

echo "pwd -P 실행"
pwd -P

string=따옴표없이할당가능?
echo $string

MAX_FD=maximun
echo "MAX_FD: $MAX_FD"

echo " "
echo "전달 받은 인자를 모두 출력한다."
echo "$*"


warn() {
  echo "함수에 전달 받은 인자들"
  echo "$*"
}

warn "인자1번" "인자2번"

boolean=false

if $boolean
then
	echo "false문자열은 true이다"
else
	echo "false 문자열은 false이다"
fi


for arg do 
	echo "전달받은 arg 인자 출력"
	echo $arg
done

echo " "
echo " "

for test do
	echo "test: $test"
done



echo " "
echo " "
TEST_VAL1=TEST_값_1번
TEST_VAL2=TEST_값_2번

printf '%s\n' "$TEST_VAL1 $TEST_VAL2"
