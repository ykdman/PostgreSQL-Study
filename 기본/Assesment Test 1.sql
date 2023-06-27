/* Assesment Test 1*/

/*id가 2인 직원에게서 최소 110 달러를 쓴 customer 의 id를 찾기*/
SELECT customer_id, staff_id, SUM(amount)
FROM payment
WHERE staff_id = 2
GROUP BY customer_id, staff_id
HAVING SUM(amount) >= 110;
-- 187, 148

/*'J' 로 시작하는 영화는 몇 편인가?*/
SELECT COUNT(*) FROM film
WHERE title LIKE 'J%'; 
-- 20편

/*이름이 'E'로 시작하는 동시에 주소 ID 가 500 미만인 고객 중, ID 번호가 가장 높은 고객은 누구?*/
SELECT * 
FROM customer
WHERE first_name LIKE 'E%' AND address_id < 500
ORDER BY customer_id DESC
LIMIT 1;
-- Eddie Tomlin
