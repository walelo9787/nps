-- models/analytics/nps_feedback.sql

{{ config(materialized='table') }}

SELECT
    customer_id,
    nps_score,
    nps_comment
FROM
    {{ ref('nps_data') }}

