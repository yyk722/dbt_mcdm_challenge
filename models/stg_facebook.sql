with stg_facebook as (
    select 
        Cast(ad_id as string) as ad_id,
        Cast(add_to_cart as int64) as add_to_cart,
        Cast(adset_id as string) as adset_id,
        Cast(campaign_id as string) as campaign_id,
        Cast(channel as string) as channel,
        Cast(clicks as int64) as clicks,
        Cast(comments as int64) as comments,
        Cast(creative_id as string) as creative_id,
        Cast(date as date) as date,
        Cast(views+likes+shares+clicks+comments as int64) as engagements,
        Cast(likes as int64) as likes,
        Cast(shares as int64) as shares,
        Cast(impressions as int64) as impressions,
        Cast(mobile_app_install as int64) as installs,
        Cast(inline_link_clicks as int64) as link_clicks,
        NULL as placement_id,
        NULL as post_click_conversions,
        NULL as post_view_conversions,
        NULL as posts,        
        Cast(purchase as int64) as purchase,
        Cast(complete_registration as int64) as registrations,
        Cast(spend as int64) as spend,
        NULL as revenue,
        Cast(purchase as int64) as total_conversions,
        NULL as video_views
    from dbt_yyeung.src_ads_creative_facebook_all_data
)

select * from stg_facebook