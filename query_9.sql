SELECT
  Device_Type,
  REGEXP_SUBSTR(Stats_Access_Link, 'http[s]?://[^/]+/([a-zA-Z0-9_.]+)') AS URL
FROM
  new_table;