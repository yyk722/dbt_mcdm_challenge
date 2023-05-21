with bing as (

    select * from {{ ref('stg_bing')}}

),

facebook as (

    select * from {{ ref('stg_facebook')}}

),

tiktok as (

    select * from {{ ref('stg_tiktok')}}

),

twitter as (

    select * from {{ ref('stg_twitter')}}

),

final as (

    select ad_id,
           add_to_cart,
           adset_id,
           campaign_id,
           channel,
           clicks,
           comments
           creative_id,
           date,
           engagements,
           impressions,
           installs,
           likes,
           link_clicks,
           placement_id,
           post_click_conversions,
           post_view_conversions,
           posts,
           purchase,
           registrations,
           revenue,
           shares,
           spend,
           total_conversions,
           video_views 
    from bing
    UNION ALL
    select ad_id,
           add_to_cart,
           adset_id,
           campaign_id,
           channel,
           clicks,
           comments
           creative_id,
           date,
           engagements,
           impressions,
           installs,
           likes,
           link_clicks,
           placement_id,
           post_click_conversions,
           post_view_conversions,
           posts,
           purchase,
           registrations,
           revenue,
           shares,
           spend,
           total_conversions,
           video_views 
    from facebook
    UNION ALL
    select ad_id,
           add_to_cart,
           adset_id,
           campaign_id,
           channel,
           clicks,
           comments
           creative_id,
           date,
           engagements,
           impressions,
           installs,
           likes,
           link_clicks,
           placement_id,
           post_click_conversions,
           post_view_conversions,
           posts,
           purchase,
           registrations,
           revenue,
           shares,
           spend,
           total_conversions,
           video_views 
    from tiktok
    UNION ALL
    select COALESCE(Cast(ad_id as string), '')  as ad_id,
           add_to_cart,
           COALESCE(Cast(adset_id as string), '') as adset_id,
           campaign_id,
           channel,
           clicks,
           comments
           creative_id,
           date,
           engagements,
           impressions,
           installs,
           likes,
           link_clicks,
           placement_id,
           post_click_conversions,
           post_view_conversions,
           posts,
           purchase,
           registrations,
           revenue,
           shares,
           spend,
           total_conversions,
           video_views 
    from twitter
)
select * from final