/*
- 풀이에 사용된 WHERE절은 인덱스를 타지 못해 데이터 전체를 스캔하므로 비효율적임.
  따라서 WHERE START_DATE >= DATE '2022-09-01' 
        AND START_DATE <  DATE '2022-10-01'와 같이 인덱스를 타도록 작성하는 것이 좋음.
- CASE WHEN 구문 사용법
    -   CASE
           WHEN 조건 1 THEN 결과 1
           WHEN 조건 2 THEN 결과 2
           ELSE 결과 3
        END
*/

SELECT HISTORY_ID, CAR_ID, 
       TO_CHAR(START_DATE, 'YYYY-MM-DD') AS START_DATE,
       TO_CHAR(END_DATE, 'YYYY-MM-DD') AS END_DATE, 
CASE
    WHEN ( END_DATE - START_DATE + 1 ) >= 30 THEN '장기 대여'
    ELSE '단기 대여'
END AS RENT_TYPE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE TO_CHAR(START_DATE, 'YYYY-MM') = '2022-09'
ORDER BY HISTORY_ID DESC;