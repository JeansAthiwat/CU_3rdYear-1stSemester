CREATE OR REPLACE FUNCTION classify_age_level(user_birth_date DATE)
RETURNS VARCHAR AS $$
DECLARE
    user_age INT;
BEGIN
    -- Calculate age by subtracting the birth year from the current year and adjusting for whether the birthday has occurred this year
    user_age := EXTRACT(YEAR FROM AGE(user_birth_date));

    -- Classify the age into different levels with more detailed groups
    IF user_age BETWEEN 0 AND 2 THEN
        RETURN 'Infant';
    ELSIF user_age BETWEEN 3 AND 5 THEN
        RETURN 'Toddler';
    ELSIF user_age BETWEEN 6 AND 12 THEN
        RETURN 'Child';
    ELSIF user_age BETWEEN 13 AND 17 THEN
        RETURN 'Teen';
    ELSIF user_age BETWEEN 18 AND 21 THEN
        RETURN 'Young Adult';
    ELSIF user_age BETWEEN 22 AND 29 THEN
        RETURN 'Adult (Young)';
    ELSIF user_age BETWEEN 30 AND 39 THEN
        RETURN 'Adult (Mid)';
    ELSIF user_age BETWEEN 40 AND 49 THEN
        RETURN 'Adult (Late)';
    ELSIF user_age BETWEEN 50 AND 59 THEN
        RETURN 'Middle-aged';
    ELSIF user_age BETWEEN 60 AND 69 THEN
        RETURN 'Senior (Young)';
    ELSIF user_age BETWEEN 70 AND 79 THEN
        RETURN 'Senior (Middle)';
    ELSIF user_age >= 80 THEN
        RETURN 'Senior (Old)';
    ELSE
        RETURN 'Invalid Date';
    END IF;
END;
$$ LANGUAGE plpgsql;
