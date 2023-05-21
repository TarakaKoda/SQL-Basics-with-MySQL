SELECT 
DATE_ADD(NOW(), INTERVAL 5 DAY) AS next_days,
DATE_ADD(NOW(), INTERVAL 1 YEAR) AS next_year,
DATE_SUB(NOW(), INTERVAL 2 DAY) AS past_days,
DATE_SUB(NOW(), INTERVAL 3 YEAR) AS past_year,
DATEDIFF("2019-01-05", "2019-01-01") AS date_differece,
TIME_TO_SEC("09:00") - TIME_TO_SEC("07:00") AS secconds_difference