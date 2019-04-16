SELECT A.AuthorId, A.AuthorName FROM tblEpisode AS E
inner join tblEpisodeEnemy AS EE ON E.EpisodeId = EE.EpisodeId 
inner join tblEnemy AS EN ON EN.EnemyId = EE.EnemyId
inner join tblAuthor AS A ON E.AuthorId = A.AuthorId
WHERE EN.EnemyName like '%Daleks%'