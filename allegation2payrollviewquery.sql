CREATE VIEW allegation2PayrollData AS
SELECT DISTINCT 
Billing_Data.*
FROM 
(Billing_Data INNER JOIN Payroll_Data ON Payroll_Data.TimeWorkedFrom = Billing_Data.TimeWorkedFrom AND  Payroll_Data.Providerid = Billing_Data.ProviderId)
WHERE
Billing_Data.Payor_ID > 11
AND 
Billing_Data.ClientCharges > 0
AND
Billing_Data.DateOfService >= '2017-01-01 00:00:00.000'
AND
Billing_Data.DateOfService <= '2017-12-31 23:59:00.000'
AND
Payroll_Data.PaidAmount <= '0'
AND NOT
Billing_Data.ProcedureCode = 'H0031' 
AND NOT
Billing_Data.ProcedureCode = 'H0032' 
AND NOT
Billing_Data.ProcedureCode = 'Training';