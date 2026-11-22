select
    trim("Institution") as institution,
    trim("State") as state,
    trim("Cut Type") as cut_type,
    trim("Program/Department") as program_department,
    try_cast("Announcement Date" as date) as announcement_date,
    trim("Effective Term") as effective_term,
    try_cast("Students Affected" as integer) as students_affected,
    try_cast("Faculty/Staff Affected" as integer) as faculty_staff_affected,
    trim("Primary Reason") as primary_reason,
    trim("Status") as status,
    trim("Source URL") as source_url,
    trim("Notes") as notes
from {{ ref('raw_cuts') }}
