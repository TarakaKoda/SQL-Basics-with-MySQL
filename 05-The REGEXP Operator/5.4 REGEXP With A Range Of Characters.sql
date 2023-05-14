SELECT *
FROm customers
WHERE last_name REGEXP "[a-h]e"

-- ^ beginning
-- $ end
-- | logical or
-- [abcd]
-- [a-f]