SELECT 
	YEAR(Ep.EpisodeDate) AS [Episode year],
	En.EnemyName,
	COUNT(Ee.EpisodeEnemyId) AS [Number of episodes]
FROM tblEpisode AS [Ep]
	join tblDoctor AS [Dr] ON Ep.DoctorId = Dr.DoctorId
	join tblEpisodeEnemy AS [Ee] ON Ee.EpisodeId = Ep.EpisodeId
	join tblEnemy AS [En] ON En.EnemyId = Ee.EnemyId
WHERE 
	YEAR(Dr.BirthDate) < 1970
GROUP BY 
	YEAR(Ep.EpisodeDate), En.EnemyName
HAVING 
	COUNT(EE.EpisodeEnemyId) != 1
ORDER BY
	[Number of episodes] DESC