SELECT Au.AuthorName, Ep.Title, Dr.DoctorName, En.EnemyName, LEN(Au.AuthorName + Ep.Title + Dr.DoctorName + En.EnemyName) as Lenght FROM tblEpisode AS Ep
join tblAuthor AS Au ON Ep.AuthorId = Au.AuthorId
join tblDoctor AS Dr ON Ep.DoctorId = Dr.DoctorId
join tblEpisodeEnemy AS Ee ON Ee.EpisodeId = Ep.EpisodeId
join tblEnemy AS En ON Ee.EnemyId = En.EnemyId
WHERE LEN(Au.AuthorName + Ep.Title + Dr.DoctorName + En.EnemyName) < 40