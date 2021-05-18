with orders as (

    select * from {{ ref('stg_orders')}}

),

payments as (

    select * from {{ ref('stg_payments') }})


select o.order_id, 
       customer_id, 
       amount
from orders o
left join payments p
on o.order_id = p.order_id