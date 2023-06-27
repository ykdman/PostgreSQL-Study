/*
가장 많은 결제를 한 직원에게 보너스를 주고싶을때 (결제 건수로 측정)
*/
SELECT staff_id, COUNT(*) FROM payment
GROUP BY staff_id
ORDER BY COUNT(*);

/*
교체비용(replacement_cost) 과 영화의 MPAA 등급사이의 관계에대한 연구 진행중
MPAA 등급별 평균 교체비용 등급은 무엇일까
*/

SELECT rating, ROUND(AVG(replacement_cost),4)
FROM film
GROUP BY rating
ORDER BY ROUND(AVG(replacement_cost),4) DESC;

/*
상위 5명의 고객에게 쿠폰을 주려고 한다. 이때 총 지출액 또는 총사용을 기준으로 상위 고객 ID는 뭘까?
(total spend 가 기준)
*/
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;