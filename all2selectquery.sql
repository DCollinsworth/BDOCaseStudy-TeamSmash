SELECT Billing_Data.*
FROM 
Billing_Data
WHERE
Billing_Data.Payor_ID > 11
AND 
Billing_Data.ClientCharges > 0
AND
Billing_Data.DateOfService >= '2017-01-01 00:00:00.000'
AND
Billing_Data.DateOfService <= '2017-12-31 23:59:00.000'
AND NOT
Billing_Data.ProcedureCode = 'H0031' 
AND NOT
Billing_Data.ProcedureCode = 'H0032' 
AND NOT
Billing_Data.ProcedureCode = 'Training';