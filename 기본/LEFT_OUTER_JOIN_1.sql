/*LEFT OUTER JOIN*/
/*film 테이블은 film 정보 , inventory는 film이 보관된 정보 이기 때문에, film의 행이 inventory에 존재하지 않을 수 도 있다.*/
SELECT film.film_id, film.title, inventory_id, store_id
FROM film
LEFT OUTER JOIN inventory
ON film.film_id = inventory.film_id
WHERE inventory.film_id IS NULL s