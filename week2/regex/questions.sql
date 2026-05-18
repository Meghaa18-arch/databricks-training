Q1 Extract digits from beginning of mixed_value
SELECT mixed_value, REGEXP_SUBSTR(mixed_value,'^[0-9]+') AS output
FROM regex_practice;
-- ^[0-9]+ → extracts starting continuous digits

 Q2 Extract digits from end of mixed_value
SELECT mixed_value, REGEXP_SUBSTR(mixed_value,'[0-9]+$') AS output
FROM regex_practice;
-- [0-9]+$ → extracts ending continuous digits

 Q3 Extract first single character
SELECT mixed_value, REGEXP_SUBSTR(mixed_value,'^.') AS output
FROM regex_practice;
-- ^. → extracts first character

 Q4 Extract last single character
SELECT mixed_value, REGEXP_SUBSTR(mixed_value,'.$') AS output
FROM regex_practice;
-- .$ → extracts last character

 Q5 Extract exactly two consecutive digits
SELECT mixed_value, REGEXP_SUBSTR(mixed_value,'[0-9]{2}') AS output
FROM regex_practice;
-- {2} → exactly 2 digits

 Q6 Extract exactly one digit
SELECT mixed_value, REGEXP_SUBSTR(mixed_value,'[0-9]') AS output
FROM regex_practice;
-- [0-9] → single numeric character

 Q7 Extract country code from phone
SELECT phone, REGEXP_SUBSTR(phone,'[0-9]+') AS output
FROM regex_practice;
-- extracts first continuous digits (country code)

Q8 Extract numeric portion between alphabets
SELECT mixed_value, REGEXP_SUBSTR(mixed_value,'[0-9]+') AS output
FROM regex_practice;
-- extracts continuous digits between letters

Q9 Extract text before @ in email
SELECT email, REGEXP_SUBSTR(email,'^[a-zA-Z0-9._-]+') AS output
FROM regex_practice;
-- ^ → start of email before @

Q10 Extract text after @ including domain
SELECT email, REGEXP_SUBSTR(email,'@[a-zA-Z0-9.]+') AS output
FROM regex_practice;
-- extracts @ and domain part

Q11 Extract domain without @
SELECT email,
REPLACE(REGEXP_SUBSTR(email,'@[a-zA-Z0-9.]+'),'@','') AS output
FROM regex_practice;
-- REPLACE removes @ symbol

Q12 Extract extension after last dot
SELECT email, REGEXP_SUBSTR(email,'[a-zA-Z]+$') AS output
FROM regex_practice;
-- $ → extracts ending extension

Q13 Extract continuous alphabets
SELECT mixed_value, REGEXP_SUBSTR(mixed_value,'[a-zA-Z]+') AS output
FROM regex_practice;
-- extracts continuous letters

Q14 Extract continuous digits
SELECT mixed_value, REGEXP_SUBSTR(mixed_value,'[0-9]+') AS output
FROM regex_practice;
-- extracts continuous numeric values

Q15 Extract first 3 characters from full_text
SELECT full_text, REGEXP_SUBSTR(full_text,'^.{3}') AS output
FROM regex_practice;
-- ^.{3} → first 3 characters

Q16 Extract last 2 characters from full_text
SELECT full_text, REGEXP_SUBSTR(full_text,'.{2}$') AS output
FROM regex_practice;
-- .{2}$ → last 2 characters

 Q17 Extract employee number before first underscore
SELECT full_text, REGEXP_SUBSTR(full_text,'[0-9]+') AS output
FROM regex_practice;
-- extracts numeric employee id

 Q18 Extract ending country code from full_text
SELECT full_text, REGEXP_SUBSTR(full_text,'[0-9]+$') AS output
FROM regex_practice;
-- extracts ending digits

 Q19 Extract alphabets between underscores
SELECT full_text, REGEXP_SUBSTR(full_text,'_[A-Z]+_') AS output
FROM regex_practice;
-- extracts text between underscores

Q20 Extract country code after plus sign
SELECT phone, REGEXP_SUBSTR(phone,'\\+[0-9]+') AS output
FROM regex_practice;
-- extracts + and country code
