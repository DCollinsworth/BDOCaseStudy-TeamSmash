CREATE VIEW OverallData AS
SELECT
*
FROM
Billing_Data
WHERE Payor_ID > '11'
AND
ClientCharges > 0;