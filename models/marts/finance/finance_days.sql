

SELECT 
date_date
,ROUND(COUNT(DISTINCT orders_id))AS nb_transactions
,ROUND(SUM(revenue)) AS revenue
,ROUND(SUM(revenue)/COUNT(DISTINCT orders_id))AS average_basket
,ROUND(SUM(Margin)) AS margin
,ROUND(SUM(Operational_margin)) AS operational_margin
FROM 
{{ ref('int_orders_operational') }}
GROUP BY date_date 
ORDER BY date_date  DESC



