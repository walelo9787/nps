-- models/analytics/nps_feedback.sql

{{ config(
    materialized='table',
    partition_by={"field": "posted_at", "data_type": "date"}
) }}

SELECT
    customer_id,
    nps_score,
    nps_comment,
    posted_at
FROM
    {{ ref('nps_data') }}

