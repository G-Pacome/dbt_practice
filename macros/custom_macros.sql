{% macro unitprice(price, quantity) %}
    ({{ price }} * {{ quantity }}) + 10
{% endmacro %}
