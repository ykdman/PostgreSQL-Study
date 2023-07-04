/*FULL OUTER JOIN*/
/*아무것도 구매하지 않은 고객의 id는 보관하지 않기위한 쿼리*/
SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS NULL
OR payment.payment_id IS NULL;

