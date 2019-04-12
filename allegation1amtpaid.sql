SELECT *
FROM Billing_Data AS BD
JOIN Billing_Data on  Billing_Data.TimeWorkedTo > BD.TimeWorkedFrom
    and Billing_Data.TimeWorkedFrom < BD.TimeWorkedTo
WHERE
BD.DateOfService = Billing_Data.DateOfService
AND
BD.Payor_ID > 11
AND
Billing_Data.Payor_ID > 11
AND
BD.ClientCharges > 0
AND
Billing_Data.ClientCharges > 0
AND 
BD.ProviderId = Billing_Data.ProviderId
AND 
BD.ClientId != Billing_Data.ClientId
AND
BD.AmountPaid > 0
AND 
Billing_Data.AmountPaid > 0
ORDER BY BD.ProviderId ASC, BD.TimeWorkedFrom ASC;

