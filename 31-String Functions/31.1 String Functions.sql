SELECT 
	LENGTH("SRINU") AS lenght_of_string,
	UPPER("srinu") AS upper,
    LOWER("Srinu") AS lower,
    LTRIM("    Srinu") AS left_trim,
    RTRIM("srinu     ") AS right_trim,
    TRIM("   SRINU   ") AS full_trim,
    LEFT("Gravitational", 3) AS left_range,
    RIGHT("Gravitational", 6) AS right_range,
    SUBSTRING("Gravitational", 3,5) AS substring_range,
    SUBSTRING("Gravitational", 2) AS substring,
    LOCATE("n", "Gravitational") AS locating,
    REPLACE("Gravitatioanl", "tioanl", "tional"),
    CONCAT("first", "last");
    
    -- Example for CONCAT 
    SELECT CONCAT(first_name, " ", last_name) AS full_name
    FROM customers
    