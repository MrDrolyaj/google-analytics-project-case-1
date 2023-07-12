CREATE TABLE superb-joy-389606.cyclistic_data.year_trip AS
SELECT *
FROM (
  SELECT *
  FROM `superb-joy-389606.cyclistic_data.jun2022`
  UNION ALL
  SELECT *
  FROM `superb-joy-389606.cyclistic_data.jul2022`
  UNION ALL
  SELECT *
  FROM `superb-joy-389606.cyclistic_data.aug2022`
  UNION ALL
  SELECT *
  FROM `superb-joy-389606.cyclistic_data.sep2022`
  UNION ALL
  SELECT *
  FROM `superb-joy-389606.cyclistic_data.oct2022`
  UNION ALL
  SELECT *
  FROM `superb-joy-389606.cyclistic_data.nov2022`
  UNION ALL
  SELECT *
  FROM `superb-joy-389606.cyclistic_data.dec2022`
  UNION ALL
  SELECT *
  FROM `superb-joy-389606.cyclistic_data.jan2023`
  UNION ALL
  SELECT *
  FROM `superb-joy-389606.cyclistic_data.feb2023`
  UNION ALL
  SELECT *
  FROM `superb-joy-389606.cyclistic_data.mar2023`
  UNION ALL
  SELECT *
  FROM `superb-joy-389606.cyclistic_data.apr2023`
  UNION ALL
  SELECT *
  FROM `superb-joy-389606.cyclistic_data.may2023`
  ORDER BY started_at
);


