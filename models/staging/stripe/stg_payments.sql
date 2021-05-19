select
    order_id,
    payment_method,
    amount
from {{ source('raw', 'payments') }}