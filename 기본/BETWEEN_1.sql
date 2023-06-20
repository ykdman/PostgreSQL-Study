/* 일반적인 BETWEEN*/
SELECT COUNT(*) FROM payment
WHERE amount BETWEEN 8 AND 9;

/* date 형태의 BETWEEN*/
SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15';