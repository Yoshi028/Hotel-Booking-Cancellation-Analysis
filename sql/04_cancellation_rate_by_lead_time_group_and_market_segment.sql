-- =====================================================
-- File: 04_cancellation_rate_by_lead_time_group_and_market_segment.sql
-- Author: Yoshihiro Tsunoda
-- Purpose:
--   Analyze cancellation rate by lead time group and
--   market segment.
--
-- Description:
--   This query calculates the average cancellation rate
--   for each combination of lead_time_group and
--   market_segment_clean.
--
-- Output:
--   - lead_time_group       : Lead time category
--   - market_segment_clean  : Cleaned market segment
--   - cancellation_rate     : Average cancellation rate
--
-- Usage:
--   Used for EDA and dashboard visualization
--   (Lead Time Group × Market Segment × Cancellation Rate).
-- =====================================================

SELECT
  lead_time_group,
  market_segment_clean AS market_segment,
  COUNT(*) AS total_bookings,
  SUM(is_canceled) AS total_cancellations,
  ROUND(SUM(is_canceled) / COUNT(*) * 100, 2) AS cancellation_rate
FROM `project-482008.dataset.hotel_bookings_cleaned`
WHERE
  lead_time_group IS NOT NULL
  AND market_segment_clean IS NOT NULL
GROUP BY
  lead_time_group,
  market_segment
ORDER BY
  lead_time_group,
  cancellation_rate DESC;
