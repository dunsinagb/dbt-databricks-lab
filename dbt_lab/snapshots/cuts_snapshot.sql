{% snapshot cuts_snapshot %}

{{
    config(
      target_schema='snapshots',
      strategy='check',
      unique_key='cut_key',
      check_cols=['status', 'source_url', 'students_affected', 'faculty_staff_affected']
    )
}}

select * from {{ ref('stg_cuts') }}

{% endsnapshot %}
