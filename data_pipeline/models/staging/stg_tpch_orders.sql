select
    o_orderkey as order_key,
    o_custkey as customer,
    o_orderstatus as status_code,
    o_totalprice as total_pricem
    o_orderdate as order_date
from
    {{ source('tpch', 'orders') }}

