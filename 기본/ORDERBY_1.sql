/*결제액이 0 이아닌 최근 5건의 결제*/
SELECT * FROM payment
WHERE amount != 0
ORDER BY payment_date DESC
LIMIT 5;

/* 처음으로 결제한 10명의 고객 찾기*/
SELECT customer_id FROM payment
WHERE amount != 0
ORDER BY payment_date ASC
LIMIT 10;

/* film 테이블에서 상영 길이가 50분 이하인 테이블*/
SELECT film_id, title, release_year, length FROM film
WHERE length <= 50;