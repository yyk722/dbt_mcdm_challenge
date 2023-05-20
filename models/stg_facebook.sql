with stg_facebok as (
    select 
        #Cast(__insert_date as ) as ,
        Cast(ad_id as string) as ad_id,
        Cast(add_to_cart as ) as add_to_cart,
        Cast(adset_id as string) as adset_id,
        Cast(campaign_id as string) as campaign_id,
        Cast(channel as string) as channel,
        Cast(clicks as int64) as clicks,
        Cast(comments as int64) as comments,
        Cast(creative_id as string) as creative_id,
        #Cast(creative_title as ) as ,
        #Cast(objective as ) as ,
        #Cast(buying_type as ) as ,
        #Cast(campaign_type as ) as ,
        #Cast(creative_body as ) as ,
        Cast(date as date) as date,
        Cast(likes as int64) as likes,
        Cast(shares as int64) as shares,
        #Cast(comments_2 as ) as ,
        #Cast(views as ) as ,
        #Cast(clicks_2 as ) as ,
        Cast(impressions as ) as impressions,
        Cast(mobile_app_install as int64) as installs,
        Cast(inline_link_clicks as ) as ,
        Cast(purchase as int64) as purchase,
        Cast(complete_registration as int64) as registrations,
        #Cast(purchase_value as ) as ,
        #Cast(shares_2 as ) as ,
        Cast(spend as int64) as spend,
        #Cast(purchase_2 as ) as ,
        #Cast(views_2 as ) as 
    from dbt_yyeung.src_ads_creative_facebook_all_data
)

select * from stg_facebok