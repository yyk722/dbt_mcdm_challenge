with bing as (

    select * from {{ ref('stg_bing')}}

),

facebook as (

    select * from {{ ref('stg_facebook')}}

),

final as (

    select * from bing
    union all
    select * from facebook

)
select * from final