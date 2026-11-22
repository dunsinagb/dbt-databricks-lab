{{ config(materialized='incremental', unique_key='cut_key') }}

select * from {{ ref('stg_cuts') }}

{% if is_incremental() %}
where announcement_date > (select max(announcement_date) from {{ this }}) - interval 90 day
{% endif %}
