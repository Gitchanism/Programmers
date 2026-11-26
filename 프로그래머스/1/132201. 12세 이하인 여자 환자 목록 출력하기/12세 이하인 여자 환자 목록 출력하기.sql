/*
- CASE 구문을 COALESCE 함수를 이용하여 풀이도 가능.
    - COALESCE( TLNO, 'NONE' ) AS TLNO
*/

SELECT PT_NAME, PT_NO, GEND_CD, AGE,
       ( 
       CASE 
       WHEN ( TLNO IS NULL ) THEN 'NONE'
       ELSE TLNO
       END
       ) AS TLNO
FROM PATIENT
WHERE ( AGE <= 12 ) AND ( GEND_CD = 'W' )
ORDER BY AGE DESC, PT_NAME;