select unit_price
from {{ ref('customer_order')}}
where unit_price < 0