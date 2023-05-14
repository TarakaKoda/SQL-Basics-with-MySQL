SELECT *
FROm customers
WHERE last_name REGEXP "[gim]e"
-- matches for ge
-- matches for ie
-- matches for me

-- WHERE last_name REGEXP "e[gim]"