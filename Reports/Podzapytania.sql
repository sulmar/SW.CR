 
 
 
 select * from Osoby as os
	 where OsobaId not in (select OsobaId from [dbo].[RodzajeKar] as rk
	 left outer join [dbo].[Orzeczenia]  as o
		on rk.Nazwa = o.[RodzajKary]
		where o.OsobaId = os.OsobaId
			and o.[RodzajKary] = 'KDPS'
		)