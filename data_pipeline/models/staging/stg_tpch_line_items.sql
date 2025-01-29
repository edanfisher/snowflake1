select
    {{
        dbt_utils.surrogate_key([
            'l_orderkey',
            'l_linenumber'
        ])      
    }} as order_item_key,
    l_orderkey as order_key,
    l_custkey as customer,
    l_orderstatus as status_code,
    l_totalprice as total_pricem
    l_orderdate as order_date
from
    {{ source('tpch', 'lineitem') }}

