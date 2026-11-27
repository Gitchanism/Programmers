/*
- DISTINCT는 데이터가 읽히는 순서에 따라 처음으로 등장한 행만 남기고
  나머지를 지운다. 
    - 정렬 후 데이터를 읽는 정렬 기반 중복 제거가 있고,
      정렬을 거치지 않고 빠르게 중복을 제거하는 해시 기반 중복 제거가 있다.
- GROUP BY는 DISTINCT에 비해 연산량이 많아서
  단순 목록만을 보고 싶다면 DISTINCT
  집계 함수를 사용하고 싶다면 GROUP BY를 사용한다.
- WHERE은 행을 걸러주는 절이고, HAVING은 그룹을 걸러주는 절이다.
*/

SELECT NAME, COUNT(NAME) AS COUNT
FROM ANIMAL_INS
WHERE NAME IS NOT NULL
GROUP BY NAME
HAVING COUNT >= 2
ORDER BY NAME;