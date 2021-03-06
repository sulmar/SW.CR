USE [CrystalReportsDb]
GO
SET IDENTITY_INSERT [dbo].[Osoby] ON 

GO
INSERT [dbo].[Osoby] ([OsobaId], [ImieNazwisko], [Wiek]) VALUES (1, N'Agnieszka', 18)
GO
INSERT [dbo].[Osoby] ([OsobaId], [ImieNazwisko], [Wiek]) VALUES (2, N'Paweł', 23)
GO
INSERT [dbo].[Osoby] ([OsobaId], [ImieNazwisko], [Wiek]) VALUES (3, N'Marcin', 18)
GO
INSERT [dbo].[Osoby] ([OsobaId], [ImieNazwisko], [Wiek]) VALUES (4, N'Bartek', 20)
GO
INSERT [dbo].[Osoby] ([OsobaId], [ImieNazwisko], [Wiek]) VALUES (5, N'Radek', 21)
GO
INSERT [dbo].[Osoby] ([OsobaId], [ImieNazwisko], [Wiek]) VALUES (6, N'Mariusz', 25)
GO
SET IDENTITY_INSERT [dbo].[Osoby] OFF
GO
SET IDENTITY_INSERT [dbo].[Jednostki] ON 

GO
INSERT [dbo].[Jednostki] ([JednostkaId], [Nazwa], [Rodzaj]) VALUES (1, N'Warszawa', N'SR')
GO
INSERT [dbo].[Jednostki] ([JednostkaId], [Nazwa], [Rodzaj]) VALUES (2, N'Bydgoszcz', N'SO')
GO
INSERT [dbo].[Jednostki] ([JednostkaId], [Nazwa], [Rodzaj]) VALUES (3, N'Kraków', N'SP')
GO
INSERT [dbo].[Jednostki] ([JednostkaId], [Nazwa], [Rodzaj]) VALUES (4, N'Gdańsk', N'SR')
GO
INSERT [dbo].[Jednostki] ([JednostkaId], [Nazwa], [Rodzaj]) VALUES (5, N'Poznań', N'SO')
GO
SET IDENTITY_INSERT [dbo].[Jednostki] OFF
GO
SET IDENTITY_INSERT [dbo].[Orzeczenia] ON 

GO
INSERT [dbo].[Orzeczenia] ([OrzeczenieId], [RodzajKary], [Status], [WymiarKary], [DataOd], [DataDo], [JednostkaId], [OsobaId]) VALUES (1, N'KWPS', 1, 5, CAST(N'2016-01-01 00:00:00.000' AS DateTime), CAST(N'2021-01-01 00:00:00.000' AS DateTime), 1, 1)
GO
INSERT [dbo].[Orzeczenia] ([OrzeczenieId], [RodzajKary], [Status], [WymiarKary], [DataOd], [DataDo], [JednostkaId], [OsobaId]) VALUES (2, N'KWPS', 0, 1, CAST(N'2014-10-01 00:00:00.000' AS DateTime), CAST(N'2015-10-01 00:00:00.000' AS DateTime), 2, 3)
GO
INSERT [dbo].[Orzeczenia] ([OrzeczenieId], [RodzajKary], [Status], [WymiarKary], [DataOd], [DataDo], [JednostkaId], [OsobaId]) VALUES (3, N'KWNS', 2, 2, CAST(N'2017-05-01 00:00:00.000' AS DateTime), NULL, 4, 6)
GO
INSERT [dbo].[Orzeczenia] ([OrzeczenieId], [RodzajKary], [Status], [WymiarKary], [DataOd], [DataDo], [JednostkaId], [OsobaId]) VALUES (4, N'KWNS', 1, 1, CAST(N'2016-02-01 00:00:00.000' AS DateTime), CAST(N'2017-02-01 00:00:00.000' AS DateTime), 1, 1)
GO
INSERT [dbo].[Orzeczenia] ([OrzeczenieId], [RodzajKary], [Status], [WymiarKary], [DataOd], [DataDo], [JednostkaId], [OsobaId]) VALUES (5, N'KWNS', 1, 4, CAST(N'2020-01-01 00:00:00.000' AS DateTime), CAST(N'2024-01-01 00:00:00.000' AS DateTime), 4, 2)
GO
INSERT [dbo].[Orzeczenia] ([OrzeczenieId], [RodzajKary], [Status], [WymiarKary], [DataOd], [DataDo], [JednostkaId], [OsobaId]) VALUES (6, N'KWPS', 1, 15, CAST(N'2010-01-01 00:00:00.000' AS DateTime), CAST(N'2025-01-01 00:00:00.000' AS DateTime), 4, 2)
GO
INSERT [dbo].[Orzeczenia] ([OrzeczenieId], [RodzajKary], [Status], [WymiarKary], [DataOd], [DataDo], [JednostkaId], [OsobaId]) VALUES (7, N'KDPS', 1, 25, CAST(N'2000-01-01 00:00:00.000' AS DateTime), CAST(N'2025-01-01 00:00:00.000' AS DateTime), 4, 2)
GO
INSERT [dbo].[Orzeczenia] ([OrzeczenieId], [RodzajKary], [Status], [WymiarKary], [DataOd], [DataDo], [JednostkaId], [OsobaId]) VALUES (8, N'KDPS', 1, 25, NULL, NULL, 3, 3)
GO
SET IDENTITY_INSERT [dbo].[Orzeczenia] OFF
GO
SET IDENTITY_INSERT [dbo].[Artykuly] ON 

GO
INSERT [dbo].[Artykuly] ([ArtykulId], [Artykul], [Paragraf], [Punkt], [PodstawaPrawna], [OrzeczenieId]) VALUES (1, N'148', N'2', N'2', N'KK', 1)
GO
INSERT [dbo].[Artykuly] ([ArtykulId], [Artykul], [Paragraf], [Punkt], [PodstawaPrawna], [OrzeczenieId]) VALUES (2, N'172', N'2', N'1', N'KK', 1)
GO
INSERT [dbo].[Artykuly] ([ArtykulId], [Artykul], [Paragraf], [Punkt], [PodstawaPrawna], [OrzeczenieId]) VALUES (3, N'200', N'1', N'1', N'KK', 3)
GO
INSERT [dbo].[Artykuly] ([ArtykulId], [Artykul], [Paragraf], [Punkt], [PodstawaPrawna], [OrzeczenieId]) VALUES (4, N'65', N'1', N'1', N'NARKO', 2)
GO
INSERT [dbo].[Artykuly] ([ArtykulId], [Artykul], [Paragraf], [Punkt], [PodstawaPrawna], [OrzeczenieId]) VALUES (5, N'172', N'1', N'5', N'KK', 3)
GO
INSERT [dbo].[Artykuly] ([ArtykulId], [Artykul], [Paragraf], [Punkt], [PodstawaPrawna], [OrzeczenieId]) VALUES (6, N'148', N'1', N'1', N'KK', 1)
GO
SET IDENTITY_INSERT [dbo].[Artykuly] OFF
GO
SET IDENTITY_INSERT [dbo].[OrganyDysponujace] ON 

GO
INSERT [dbo].[OrganyDysponujace] ([OrganDysponujacyId], [Nazwa], [OrzeczenieId], [Symbol]) VALUES (1, N'Warszawa', 1, N'WAW       ')
GO
INSERT [dbo].[OrganyDysponujace] ([OrganDysponujacyId], [Nazwa], [OrzeczenieId], [Symbol]) VALUES (2, N'Kraków', 1, N'KRA       ')
GO
INSERT [dbo].[OrganyDysponujace] ([OrganDysponujacyId], [Nazwa], [OrzeczenieId], [Symbol]) VALUES (3, N'Bydgoszcz', 3, N'BYD       ')
GO
INSERT [dbo].[OrganyDysponujace] ([OrganDysponujacyId], [Nazwa], [OrzeczenieId], [Symbol]) VALUES (4, N'Poznań', 1, N'POZ       ')
GO
INSERT [dbo].[OrganyDysponujace] ([OrganDysponujacyId], [Nazwa], [OrzeczenieId], [Symbol]) VALUES (5, N'Gdynia', 3, N'GDY       ')
GO
INSERT [dbo].[OrganyDysponujace] ([OrganDysponujacyId], [Nazwa], [OrzeczenieId], [Symbol]) VALUES (6, N'Gdynia', 4, N'GDY       ')
GO
INSERT [dbo].[OrganyDysponujace] ([OrganDysponujacyId], [Nazwa], [OrzeczenieId], [Symbol]) VALUES (7, N'Wrocław', 4, N'WRO       ')
GO
SET IDENTITY_INSERT [dbo].[OrganyDysponujace] OFF
GO
SET IDENTITY_INSERT [dbo].[RodzajeKar] ON 

GO
INSERT [dbo].[RodzajeKar] ([RodzajKaryId], [Nazwa]) VALUES (1, N'KWNS')
GO
INSERT [dbo].[RodzajeKar] ([RodzajKaryId], [Nazwa]) VALUES (2, N'KWPS')
GO
INSERT [dbo].[RodzajeKar] ([RodzajKaryId], [Nazwa]) VALUES (3, N'KDPS')
GO
INSERT [dbo].[RodzajeKar] ([RodzajKaryId], [Nazwa]) VALUES (4, N'KXXXX')
GO
SET IDENTITY_INSERT [dbo].[RodzajeKar] OFF
GO
