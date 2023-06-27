/*최소 교체비용 출력*/
SELECT MIN(replacement_cost) FROM film;

/*최대 교체비용 출력*/
SELECT MAX(replacement_cost) AS max_replace_cost FROM film;

/* 하나의 열에 대해서만 집계함수를 호출할 수 있다.*/
-- SELECT MIN(replacement_cost), film_id FROM film; -- Error

SELECT MIN(replacement_cost), MAX(replacement_cost)
FROM film;

/* 평균 구하기*/
SELECT ROUND(AVG(replacement_cost),2) --소수 두자리수까지 반올림
FROM film;

/*총합 구하기*/
SELECT SUM(replacement_cost)
FROM film;