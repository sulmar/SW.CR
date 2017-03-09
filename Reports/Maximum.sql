
select * from [dbo].[Orzeczenia]
inner join [dbo].[OrganyDysponujace]
on [dbo].[OrganyDysponujace].[OrzeczenieId] = [dbo].[Orzeczenia].[OrzeczenieId] 
order by [dbo].[Orzeczenia].[OrzeczenieId], [OrganDysponujacyId]

-- Common Table Expression

with cteOrzeczenia as 
(
select top(99999)
	[dbo].[Orzeczenia].[OrzeczenieId] , 
	max([OrganDysponujacyId]) as OrganDysponujacyId
from [dbo].[Orzeczenia]
inner join [dbo].[OrganyDysponujace]
on [dbo].[OrganyDysponujace].[OrzeczenieId] = [dbo].[Orzeczenia].[OrzeczenieId] 
group by  [dbo].[Orzeczenia].[OrzeczenieId]
order by OrganDysponujacyId
 )

select 
	cteOrzeczenia.*,
	[Nazwa],
	[Symbol]
	from cteOrzeczenia
	inner join [dbo].[OrganyDysponujace]
		on cteOrzeczenia.OrganDysponujacyId = [dbo].[OrganyDysponujace].OrganDysponujacyId 



