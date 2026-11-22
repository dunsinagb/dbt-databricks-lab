select
    date_trunc('month', announcement_date) as announcement_month,
    count(*) as total_cuts,
    count(distinct institution) as institutions
from {{ ref('stg_cuts') }}
group by 1
