WITH raw_listings AS (  
 SELECT  * FROM {{ source('airbnb', 'listings') }}
)
SELECT
 id AS listing_id, -- new alias name
 name AS listing_name, -- new alias name
 listing_url,
 room_type,
 minimum_nights,
 host_id,
 price AS price_str,--new alias name
 created_at,
 updated_at
FROM
 raw_listings 