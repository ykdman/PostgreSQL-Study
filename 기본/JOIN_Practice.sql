/*JOIN 연습문제 1*/
/*캘리포니아 판매 세법이 개정되어 고객들에게 이메일로 내용을 알려야한다.
이때 캘리포니아에 살고 있는 고객들의 이메일은 무엇인가?*/

-- customer.address_id = address.address_id
SELECT address.district, customer.email FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
WHERE address.district = 'California';

/*JOIN 연습문제 2*/
/*
닉 윌버그(Nick Wahlberg) 의 팬인 고객이 매장에 들어와 닉 월버그가 출연한 영화목록을 찾는다.
닉 월버그가 출연한 영화를 찾아주어야 한다.
*/
/*
풀이 논리
: film 에는 title / film_id, film_actor에는 film_id, actor_id
actor 에는 actor_id가 있기 때문에
*/

--1. film_actor 와 actor
/*
SELECT film_actor.film_id FROM film_actor
LEFT OUTER JOIN actor
ON film_actor.actor_id = actor.actor_id
WHERE actor.first_name = 'Nick' And actor.last_name = 'Wahlberg'
*/

-- My 정답
SELECT film.title, actor.first_name, actor.last_name 
FROM film LEFT OUTER JOIN film_actor
	ON film.film_id = film_actor.film_id 
	LEFT OUTER JOIN actor
	ON film_actor.actor_id = actor.actor_id
	WHERE actor.first_name = 'Nick' And actor.last_name = 'Wahlberg';

-- 진짜 처음으로 테이블 3개를 사용해보았다... 쩐다...
-- Stack Over Flow와 구글에서 3개이상 테이블 LEFT JOIN 하는 방법을 보고 배웠다.

-- 영상 해설
SELECT * FROM film_actor
INNER JOIN actor
ON film_actor.actor_id = actor.actor_id
INNER JOIN film
ON film_actor.film_id = film.film_id
WHERE actor.first_name = 'Nick' AND actor.last_name='Wahlberg'

