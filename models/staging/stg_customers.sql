select 
    {{ dbt_utils.generate_surrogate_key(['CUSTOMERID','PHONE'])}} as unique_customer_id,
    CUSTOMERID as customer_id,
    concat(FIRSTNAME,'-',LASTNAME) as full_name,
    EMAIL,
    COUNTRY_CODE,
    PHONE,
    CREATED_AT
from {{ source('PUB','CUSTOMERS') }}
