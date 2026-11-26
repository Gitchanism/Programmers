/*
- LIKE 연산자를 사용하여 특정 옵션이 포함된 차량만 조회
- INSTR 함수(열 이름, '검색할 문자열') > 0 조건을 사용하여 
  특정 옵션이 포함된 차량만 조회
- REGEXP_LIKE(열 이름, '정규식') 조건을 사용하여 특정 옵션이 포함된 차량만 조회
- 정규식이란? 
  - 특정 문자열을 찾기 위해 사용하는 패턴
  - 예: '네비게이션|썬루프'는 '네비게이션' 또는 '썬루프'가 포함된 문자열을 찾음
*/

SELECT * FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS LIKE '%네비게이션%'
ORDER BY CAR_ID DESC;