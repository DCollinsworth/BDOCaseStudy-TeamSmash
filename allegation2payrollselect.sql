
SELECT DISTINCT --sum(clientCharges)
*
FROM 
(allegation2PayrollData INNER JOIN Provider_LU$ ON allegation2PayrollData.ProviderId = Provider_LU$.ProviderId)
WHERE
Provider_LU$.Pay_Type = 'Hourly';
