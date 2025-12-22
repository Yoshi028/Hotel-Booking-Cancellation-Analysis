-- =====================================================
-- File: 01_bookings_by_market_segment.sql
-- Author: Yoshihiro Tsunoda
-- Purpose:
--   Calculate the total number of bookings for each
--   cleaned market segment.
--
-- Description:
--   This query aggregates booking records by
--   market_segment_clean and counts the number of
--   bookings per segment.
--
-- Output:
--   - market_segment_clean : Cleaned market segment category
--   - total_bookings       : Number of bookings
--
-- Usage:
--   Used for EDA and dashboard visualization
--   (Bookings by Market Segment).
-- =====================================================

SELECT
  market_segment_clean AS market_segment,
  COUNT(*) AS total_bookings
FROM `project-482008.dataset.hotel_bookings_cleaned`
GROUP BY market_segment
ORDER BY total_bookings DESC;
