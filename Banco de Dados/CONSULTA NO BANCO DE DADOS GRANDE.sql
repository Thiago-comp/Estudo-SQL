SELECT * FROM 
	SALESLT.Address
WHERE
	CITY = 'TORONTO'
	OR
(
	CITY = 'MONTREAL'
	AND
	YEAR(ModifiedDate) <= 2005
)