SELECT D.DoctorName, E.Title FROM tblEpisode as E
inner join tblDoctor as D on E.DoctorId = D.DoctorId
WHERE year(E.EpisodeDate) = 2010