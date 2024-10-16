select 
    {{ dbt_utils.generate_surrogate_key(['ORDERITEMID'])}} as uniq_order_item_id,
    ORDERITEMID,
    ORDERID,
    PRODUCT,
    QUANTITY,
    PRICE
from 
    {{ source('PUB','ORDER_ITEMS') }}