with stg_twitter as (
    select 
        NULL as ad_id,
        NULL as adset_id,
        NULL as add_to_cart,
        Cast(campaign_id as string) as campaign_id,
        Cast(channel as string) as channel,
        Cast(clicks as int64) as clicks,
        Cast(comments as int64) as comments,
        NULL as creative_id,
        Cast(date as date) as date,
        Cast(engagements as int64) as engagements,
        Cast(impressions as int64) as impressions,
        NULL as installs,
        Cast(likes as int64) as likes,
        Cast(url_clicks as int64) as link_clicks,
        NULL as placement_id,
        NULL as post_click_conversions,
        NULL as post_view_conversions,
        NULL as posts,
        NULL as purchase,
        NULL as registrations,
        NULL as revenue,
        NULL as shares,
        Cast(spend as int64) as spend,
        NULL as total_conversions,
        Cast(video_total_views as int64) as video_views
    from dbt_yyeung.src_promoted_tweets_twitter_all_data
)

select * from stg_twitter