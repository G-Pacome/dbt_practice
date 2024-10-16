select 
    {{ dbt_utils.generate_surrogate_key(['ORDERID'])}} as uniq_order_id ,
    ORDERID,
    CUSTOMERID as customer_id,
    ORDERDATE,
    STATUS
from 
    {{ source('PUB','ORDERS') }}