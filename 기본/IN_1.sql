/* IN 명령어 기본 사용법*/
SELECT * FROM payment
WHERE amount IN (0.99, 1.98, 1.99)
ORDER BY amount; --amount 의 값이 0.99 | 1.98 | 1.99 인것들만 출력

SELECT * FROM payment
WHERE amount IN (0.99, 1.98, 1.99); --3321 Rows

SELECT COUNT(*) FROM payment
WHERE amount  NOT IN (0.99, 1.98, 1.99); --11295 Rows

SELECT * FROM customer
WHERE first_name IN ('John', 'Jake', 'Julie');