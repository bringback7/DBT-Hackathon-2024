
    
    

with __dbt__cte__my_first_dbt_model as (
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?

    This will override configurations stated in dbt_project.yml
    Try changing "table" to "view" below
*/
with
    source_data as (

        select 1 as id
        union all
        select null as id

    )

select *
from source_data
where id is not null
),  __dbt__cte__my_second_dbt_model as (
-- Use the `ref` function to select from other models

select *
from __dbt__cte__my_first_dbt_model
where id = 1
) select
    id as unique_field,
    count(*) as n_records

from __dbt__cte__my_second_dbt_model
where id is not null
group by id
having count(*) > 1


