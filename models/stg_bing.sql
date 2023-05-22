with stg_bing as (
    select 
        Cast(ad_id as string) as ad_id,
        Cast(adset_id as string) as adset_id,
        NULL as add_to_cart,
        Cast(campaign_id as string) as campaign_id,
        Cast(channel as string) as channel,
        Cast(clicks as int64) as clicks,
        NULL as comments,
        NULL as creative_id,
        Cast(date as date) as date,
        NULL as engagements,
        Cast(imps as int64) as impressions,
        NULL as installs,
        NULL as likes,
        NULL as link_clicks,
        NULL as placement_id,
        NULL as post_click_conversions,
        NULL as post_view_conversions,
        NULL as posts,
        NULL as purchase,
        NULL as registrations,
        Cast(revenue as int64) as revenue,
        NULL as shares,
        Cast(spend as int64) as spend,
        Cast(conv as int64) as total_conversions,
        NULL as video_views
    from {{ ref('src_ads_bing_all_data')}}
)

select * from stg_bing