string_test() {
    echo "string test"
}

function string_test2() {
    echo "string test2"
    echo "인자값: ${@}"
}

string_test
string_test2
string_test3 # 에러

# 함수호출 코드가 함수코드보다 앞서있으면 에러 발생
string_test3() {
    echo "어차피 이건 에러"
}


# 함수에 인자값 전달하기(공백으로 띄어서 2개의 인자값을 넘김)
string_test2 "hello" "world"