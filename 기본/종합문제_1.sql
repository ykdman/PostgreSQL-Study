/*
How Many payment transaction were greater than $5.00?
- 5달러 이상을 결제한 거래의 수가 몇개?
*/

SELECT COUNT(*) FROM payment
WHERE amount >= 5.00; --3618 Rows

/*
HOW many actors have a first name that starts whit ther letter P?
*/
SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'P%'; -- 5 Rows

/*
HOW many unique districts are our customers from?
- 고객 주소에서 중복되지 않은 고유한 주소는 몇개인가?
*/

SELECT COUNT(DISTINCT(district)) FROM address;

/*
 Retrieve the list of names for thise distinct districts from the previous question
 - 위의 질문에서 중복되지않은 지역의 명단 출력
*/
SELECT DISTINCT(district)s
FROM address;

/*
How many films have a rating of R and a replacemnet cost between $5 and $15?
- 등급이 R 등급이며 교환 비용이 5달러와 15달러사이인 영화는 몇편인가
*/
SELECT COUNT(*)
FROM film
WHERE rating = 'R' AND (replacement_cost BETWEEN 5 AND 15);


/*
How many films have the word "Truman" somwhere in the title?
*/
SELECT COUNT(*)
FROM film
WHERE title LIKE '%Truman%';