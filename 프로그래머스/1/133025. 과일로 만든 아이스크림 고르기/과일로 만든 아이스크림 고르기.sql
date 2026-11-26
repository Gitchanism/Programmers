/*
- 쿼리는 메인쿼리와 서브쿼리로 구성됨.
- 서브쿼리의 종류 및 사용법
    - 스칼라 서브쿼리
        - 단일 행의 단일 컬럼의 결과를 반환(보통 집계함수 활용)
        - 비교 연산자와 함께 사용
    - 인라인 뷰
        - 여러 행의 여러 칼럼의 결과를 반환
    - 다중행 서브쿼리
        - 여러 행의 단일 컬럼의 결과를 반환
        - IN, ANY, ALL 연산자와 함께 사용
            - ANY는 서브쿼리 결과 중 하나라도 만족하면 참 
              ALL은 서브쿼리의 모든 결과를 만족해야 참
    - 다중컬럼 서브쿼리
        - 여러 컬럼의 결과를 반환
        - EXISTS 연산자와 함께 사용
            - 사용 예시
            WHERE EXISTS (
                SELECT 1
                FROM orders o
                WHERE o.customer_id = c.customer_id
            )
*/

SELECT FLAVOR
FROM FIRST_HALF
WHERE FLAVOR
    IN ( SELECT FLAVOR 
         FROM ICECREAM_INFO 
         WHERE INGREDIENT_TYPE = 'fruit_based' )
    AND ( TOTAL_ORDER >= 3000 )
ORDER BY TOTAL_ORDER DESC;