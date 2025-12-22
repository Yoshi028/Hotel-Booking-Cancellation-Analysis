-- =====================================================
-- File: 03_cancellation_rate_by_lead_time_group.sql
-- Author: Yoshihiro Tsunoda
-- Purpose:
--   Analyze cancellation rate by lead time group.
--
-- Description:
--   This query calculates the average cancellation rate
--   for each lead time group created during feature
--   engineering (e.g. 0-30, 31-90, 90+ days).
--
-- Output:
--   - lead_time_group   : Lead time category
--   - cancellation_rate: Average cancellation rate
--
-- Usage:
--   Used for EDA and dashboard visualization
--   (Cancellation Rate by Lead Time Group).
-- =====================================================

SELECT
  lead_time_group,
  COUNT(*) AS total_bookings,
  SUM(is_canceled) AS total_cancellations,
  ROUND(SUM(is_canceled) / COUNT(*) * 100, 2) AS cancellation_rate
FROM `project-482008.dataset.hotel_bookings_cleaned`
WHERE lead_time_group IS NOT NULL
GROUP BY lead_time_group
ORDER BY cancellation_rate DESC;
