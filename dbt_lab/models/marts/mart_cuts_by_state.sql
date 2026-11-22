select
    state,
    count(*) as total_cuts,
    count(distinct institution) as institutions,
    sum(case when cut_type = 'staff_layoff' then 1 else 0 end) as staff_layoffs,
    sum(case when cut_type = 'program_suspension' then 1 else 0 end) as program_suspensions,
    sum(faculty_staff_affected) as total_faculty_staff_affected,
    sum(students_affected) as total_students_affected
from {{ ref('stg_cuts') }}
group by state
