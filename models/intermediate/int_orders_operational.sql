select *

,ROUND(margin + shipping_fee - (logcost + ship_cost),2) AS operational_margin

from {{ ref("int_orders_margin") }}
left join {{ ref("stg_raw__ship") }} using (orders_id)
ORDER BY orders_id desc