/*
- 오라클 반올림 함수: ROUND(숫자, 소수점 자리수) 
  - 소수점 자리수를 0으로 지정하면 정수로 반올림
- SQL 표준 집계 함수 5가지 
  - COUNT: 행의 개수
  - SUM: 합계
  - AVG: 평균
  - MAX: 최대값
  - MIN: 최소값
        - 이 중 COUNT(*)만은 NULL을 포함하여 계산
        - AVG의 경우 분모에서도 NULL을 제외하고 계산
*/


SELECT ROUND(AVG(DAILY_FEE), 0)
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV';