with stg_bing as (
    select 
        Cast(ad_id as string) as ad_id,
        Cast(adset_id as string) as adset_id,
        Cast(campaign_id as string) as campaign_id,
        Cast(channel as string) as channel,
        #Cast(ad_description as ) as
        #Cast(title_part_1 as ) as
        #Cast(title_part_2 as ) as
        Cast(clicks as int64) as clicks,
        Cast(date as date) as date,
        Cast(imps as int64) as impressions,
        Cast(revenue as int64) as revenue,
        Cast(spend as int64) as spend,
        Cast(conv as int64) as total_conversions
    from dbt_yyeung.src_ads_bing_all_data
)

select * from stg_bing