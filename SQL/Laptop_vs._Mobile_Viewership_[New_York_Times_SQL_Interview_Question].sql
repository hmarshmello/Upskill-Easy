SELECT
  SUM(CASE WHEN device_type = 'laptop' THEN 1 END) as laptop_views,
  SUM(CASE WHEN device_type = 'tablet' or device_type = 'phone' THEN 1 END) as mobile_views
FROM viewership;