
{% snapshot orders_snapshot %}
    {{
        config(
            target_schema='PUB',
            target_database='PROJECT',
            unique_key='ORDERID',
            strategy='timestamp',
            updated_at='ORDERDATE'
        )
    }}

    SELECT *
    FROM {{ source('PUB', 'ORDERS') }}
{% endsnapshot %}
