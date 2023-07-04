/*INNER JOIN*/
SELECT rental_id,customer.customer_id, customer.email
--테이블의 고유한 Column 일 경우 테이블을 참조하지 않아도 된다.
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;

