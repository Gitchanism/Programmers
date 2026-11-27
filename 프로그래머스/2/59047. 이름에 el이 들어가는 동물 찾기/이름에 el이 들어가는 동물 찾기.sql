/*
- LOWER(문자열): 소문자로 변환
  UPPER(): 대문자로 변환
  INITCAP(): 첫 글자만 대문자로
- ORDER BY절에도 콤마 붙이자..
*/
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE ( ANIMAL_TYPE = 'Dog' )
      AND ( LOWER(NAME) LIKE '%el%' )
ORDER BY NAME, ANIMAL_ID;