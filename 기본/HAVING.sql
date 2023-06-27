/*HAVING 구문*/

/*
customer_id로 Grouping 한 값들 중 amount 합계가 130 이상인 것들만 출력
*/
SELECT customer_id, SUM(amount) FROM payment
WHERE customer_id NOT IN (184, 87, 477)
GROUP BY customer_id
HAVING SUM(amount) >=130
ORDER BY SUM(amount) DESC;

/*이용 고객의 수가 300명 초과인 점포를 찾기*/
SELECT store_id, COUNT(customer_id) FROM customer
GROUP BY store_id
HAVING COUNT(customer_id) > 300;
