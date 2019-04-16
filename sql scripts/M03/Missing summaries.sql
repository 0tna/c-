SELECT *, 
isnull(Summary, 'No summary') as 'using ISNULL', 
COALESCE(Summary, 'No summary') as 'using COALESCE',
CASE when Summary is null then 'No Summary' else Summary END as 'using CASE' 
FROM tblContinent