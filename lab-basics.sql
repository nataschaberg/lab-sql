USE bank;

-- Q1
SELECT client_id
  FROM client
 WHERE district_id = 1
 ORDER BY client_id
 LIMIT 5;

-- Q2
SELECT client_id
  FROM client
 WHERE district_id = 72
 ORDER BY client_id DESC
 LIMIT 1;

-- Q3
SELECT amount
  FROM loan
 ORDER BY amount
 LIMIT 3;

-- Q4
SELECT DISTINCT(status)
  FROM loan
 ORDER BY status;

-- Q5
SELECT loan_id
  FROM loan
 ORDER BY payments
 LIMIT 1;

-- Q6
SELECT account_id, amount
  FROM loan
 ORDER BY account_id
 LIMIT 5;

-- Q7
SELECT account_id
  FROM loan
 WHERE duration = 60
 ORDER BY amount
 LIMIT 5;
 
-- Q8
SELECT DISTINCT(k_symbol)
  FROM `order`
 WHERE k_symbol <> ''
 ORDER BY k_symbol;

-- Q9
SELECT order_id
  FROM `order`
 WHERE account_id = 34;

-- Q10
SELECT DISTINCT(account_id)
  FROM `order`
 WHERE order_id BETWEEN 29540 AND 29560;
 
-- Q11
SELECT amount
  FROM `order`
 WHERE account_to = 30067122;
 
-- Q12
SELECT trans_id, date, type, amount
  FROM trans
 WHERE account_id = 793
 ORDER BY date DESC
 LIMIT 10;
 
-- Q13
SELECT district_id,
	   COUNT(client_id) AS num_of_clients
  FROM client
 WHERE district_id < 10
 GROUP BY district_id
 LIMIT 10;
 
-- Q14
SELECT type, COUNT(*) AS num_of_card
  FROM card
 GROUP BY type;
 
-- Q15
SELECT account_id, SUM(amount) AS total
  FROM loan
 GROUP BY account_id
 ORDER BY total DESC
 LIMIT 10;
 
-- Q16
SELECT date, COUNT(*) AS num_loans_per_day
  FROM loan
 WHERE date < 930907
 GROUP BY date
 ORDER BY date DESC;

-- Q17
SELECT date, duration, COUNT(*) AS num_loans_per_dur
  FROM loan
 WHERE date BETWEEN 971201 AND 971231
 GROUP BY date, duration
 ORDER BY date, duration;

-- Q18
SELECT account_id, type, SUM(amount) AS total_amount
  FROM trans
 WHERE account_id = 396
 GROUP BY type;

-- Q19
SELECT account_id,
       (CASE 
		  WHEN type = 'PRIJEM' THEN 'INCOMING'
		  WHEN type = 'VYDAJ' THEN 'OUTGOING'
		END), 
	   FLOOR(SUM(amount)) AS total_amount
  FROM trans
 WHERE account_id = 396
 GROUP BY type;
 
-- Q20
SELECT account_id,
       FLOOR(SUM(CASE
		 WHEN type = 'PRIJEM' THEN amount
       END)) AS incoming,
       FLOOR(SUM(CASE
		 WHEN type = 'VYDAJ' THEN amount
       END)) AS outgoing,
       FLOOR(SUM(CASE
		 WHEN type = 'PRIJEM' THEN amount
       END)) -
       FLOOR(SUM(CASE
		 WHEN type = 'VYDAJ' THEN amount
       END)) AS diff
  FROM trans
 WHERE account_id = 396
 GROUP BY account_id;
 
-- Q21
SELECT account_id,
       FLOOR(SUM(CASE
		 WHEN type = 'PRIJEM' THEN amount
       END)) -
       FLOOR(SUM(CASE
		 WHEN type = 'VYDAJ' THEN amount
       END)) AS diff
  FROM trans
 GROUP BY account_id
 ORDER BY diff DESC
 LIMIT 10;

 
 
 
 
 