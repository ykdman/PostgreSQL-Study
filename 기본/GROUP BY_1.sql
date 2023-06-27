/*GROUP BY*/
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY customer_id;

SELECT customer_id, staff_id, SUM(amount)
FROM payment
GROUP BY staff_id, customer_id
ORDER BY customer_id, staff_id;

/*날짜(DATE 형식)를 이용한 GROUP BY*/
SELECT DATE(payment_date), SUM(amount) FROM payment
GROUP BY DATE(payment_date)
ORDER BY SUM(amount) DESC;

