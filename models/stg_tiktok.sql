with stg_tiktok as (
    select 
        Cast(ad_id as string) as ad_id,
        Cast(adgroup_id as string) as adset_id,
        Cast(add_to_cart as int64) as add_to_cart,
        Cast(campaign_id as string) as campaign_id,
        Cast(channel as string) as channel,
        Cast(clicks as int64) as clicks,
        NULL as comments,
        NULL as creative_id,
        Cast(date as date) as date,
        NULL as engagements,
        Cast(impressions as int64) as impressions,
        Cast(rt_installs+skan_app_install as int64) as installs,
        NULL as likes,
        NULL as link_clicks,
        NULL as placement_id,
        NULL as post_click_conversions,
        NULL as post_view_conversions,
        NULL as posts,
        Cast(purchase as int64) as purchase,
        Cast(registrations as int64) as registrations,
        NULL as revenue,
        NULL as shares,
        Cast(spend as int64) as spend,
        Cast(conversions+skan_conversion as int64) as total_conversions,
        Cast(video_views as int64) as video_views
    from dbt_yyeung.src_ads_tiktok_ads_all_data
)

select * from stg_tiktok