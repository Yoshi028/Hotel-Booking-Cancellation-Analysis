-- =====================================================
-- File: 02_cancellation_rate_by_market_segment.sql
-- Author: Yoshihiro Tsunoda
-- Purpose:
--   Analyze cancellation rate by market segment.
--
-- Description:
--   This query calculates the average cancellation rate
--   for each cleaned market segment.
--   The is_canceled column is assumed to be:
--     1 = canceled, 0 = not canceled
--
-- Output:
--   - market_segment_clean : Cleaned market segment category
--   - cancellation_rate    : Average cancellation rate
--
-- Usage:
--   Used for EDA and dashboard visualization
--   (Cancellation Rate by Market Segment).
-- =====================================================

SELECT
  market_segment_clean AS market_segment,
  COUNT(*) AS total_bookings,
  SUM(is_canceled) AS total_cancellations,
  ROUND(SUM(is_canceled) / COUNT(*) * 100, 2) AS cancellation_rate
FROM `project-482008.dataset.hotel_bookings_cleaned`
GROUP BY market_segment
ORDER BY cancellation_rate DESC;
