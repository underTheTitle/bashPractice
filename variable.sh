# 전역 변수 지정
string="hello world" #변수=값. 변수 = 값 X
echo ${string}

# 지역 변수 테스트 함수
string_test() {
    # 전역 변수와 동일하게 사용함. 만약 local 뺸다면 전역 변수에 덮어씌어지게 됨
    local string="local"
    echo ${string}
}

# 지역 변수 테스트 함수 호출
string_test

# 지역 변수 테스트 함수에서 동일한 변수 명을 사용했지만 값이 변경되지 않음
echo ${string}

# 환경 변수 선언
export hello_world="hello world..."

# 자식 스크립트 호출은 스크립트 경로를 쓴다.
./variable_export_test.sh