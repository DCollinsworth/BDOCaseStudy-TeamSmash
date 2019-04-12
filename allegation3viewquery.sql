CREATE VIEW allegation3 AS
SELECT DISTINCT
Billing_Data.*
FROM
Billing_Data, Holidays
WHERE
Billing_Data.DateOfService = Holidays.holidays
AND
Billing_Data.Payor_ID > 11
AND
Billing_Data.ClientCharges > 0
AND NOT
Billing_Data.ProcedureCode = 'H0031' 
AND NOT
Billing_Data.ProcedureCode = 'H0032' 
AND NOT
Billing_Data.ProcedureCode = 'Training';
