
    
    



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
) select id
from __dbt__cte__my_first_dbt_model
where id is null


