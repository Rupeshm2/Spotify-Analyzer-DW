{{ config(materialized='view') }}

SELECT 
    track_key,
    artist_key,
    country_key,
    date_key,
    rank,
    peak_rank,
    previous_rank,
    weeks_on_chart,
    streams,
    popularity_score
FROM {{ source('raw_data', 'fact_music_streams') }}