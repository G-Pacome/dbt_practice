with customer_order_data as (
    select 
        c.unique_customer_id,
        o.uniq_order_id,
        c.full_name,
        o.ORDERDATE,
        o.STATUS,
        c.COUNTRY_CODE,
        cd.REGION,
        cd.CAPITAL,
        cd.PHONE_CODE,
        oi.PRODUCT,
        oi.QUANTITY,
        oi.PRICE,
        oi.PRICE * oi.QUANTITY as unit_price
    from {{ ref('stg_customers') }} c
    join {{ ref('stg_orders') }} o on o.customer_id = c.customer_id
    join {{ ref('stg_order_items') }} oi on oi.ORDERID = o.ORDERID
    join {{ ref('country_data') }} cd on cd.COUNTRY_CODE = c.COUNTRY_CODE  
)
select * 
from customer_order_data
