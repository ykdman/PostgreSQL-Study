/* LIKE */
/* first_name 이 J로 시작하고 last_name이 S로 시작하는 모든 항목*/
SELECT * FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE 'S%';

/* first_name이 A로 시작, last_name이 B로 시작하지 않는 모든 항목 (last_name 오름차순)*/
SELECT * FROM customer
WHERE first_name LIKE 'A%' AND last_name NOT LIKE 'B%'
ORDER BY last_name;