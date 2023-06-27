/* HAVING 연습문제*/

/*결제 거래 건수가 40 건이상인 고객에게 플래티넘 손님 칭호를 준다.*/
SELECT customer_id, COUNT(*)
FROM payment
GROUP BY customer_id
HAVING COUNT(*) >= 40
ORDER BY COUNT(*) DESC;

/*직원 2와의 거래에서 100달러 이상을 사용한 customer 의 id는 무엇인가*/

SELECT customer_id, staff_id, SUM(amount)
FROM payment
WHERE staff_id = 2
GROUP BY customer_id, staff_id
HAVING SUM(amount) >= 100
ORDER BY SUM(amount);
