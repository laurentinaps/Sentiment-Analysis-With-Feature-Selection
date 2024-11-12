SELECT a.[agreementno], a.assign_date, a.end16, a.end31, a.end46, a.dpd, b.dpd16, a.persona1, b.persona16, c.persona31, a.prob1, b.prob16, c.prob31, a.product FROM (
	SELECT [process_date] as assign_date
	  ,dateadd(day, 15, CAST(process_date as date)) as end16
	  ,dateadd(day, 30, CAST(process_date as date)) as end31
	  ,dateadd(day, 46, CAST(process_date as date)) as end46
      ,[agreementno]
      ,[applicationid]
      ,[product]
      ,[dpd]
      ,[probabilityofdefault] as prob1
      ,[persona] as persona1
      ,[self_cure_prob]
      ,[mob]
      ,[pt]
	FROM [DB_Bravo].[dbo].[collection__persona__assignment_model]
	WHERE CAST(process_date as date) between '20240801' and '20240831' 
	AND dpd = 1) a
  LEFT JOIN (
	SELECT cast(process_date as date) as process_date
		, agreementno
		, dpd as dpd16
		, persona as persona16
		, [probabilityofdefault] as prob16
	FROM [DB_Bravo].[dbo].[collection__persona__assignment_model]
	WHERE CAST(process_date as date) between '20240801' and '20240831') b
  ON a.agreementno = b.agreementno and a.end16 = b.process_date
  LEFT JOIN (
	SELECT cast(process_date as date) as process_date
		, agreementno
		, dpd as dpd31
		, persona as persona31
		, [probabilityofdefault] as prob31
	FROM [DB_Bravo].[dbo].[collection__persona__assignment_model]
	WHERE CAST(process_date as date) between '20240801' and '20240930') c
  ON a.agreementno = b.agreementno and a.end31 = b.process_date