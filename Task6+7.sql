ALTER FUNCTION [dbo].[fnEnemies] (
@EpisodeId int)
RETURNS CHAR(255) AS
BEGIN
DECLARE @return_value CHAR(255);
set @return_value =  (
SELECT tblEnemy.EnemyName
FROM  tblEnemy
INNER JOIN tblEpisodEnemy
ON tblEpisodEnemy.EpisodId = tblEnemy.EnemyId where tblEpisodEnemy.EpisodId=@EpisodeId)
    RETURN @return_value
END;



ALTER FUNCTION [dbo].[fnCompanions] (
@EpisodeId int)
RETURNS CHAR(255) AS
BEGIN
DECLARE @return_value CHAR(255);
set @return_value =  (
SELECT tblCompanion.CompanionName
FROM  tblCompanion
INNER JOIN tblEpisodCompanion
ON tblEpisodCompanion.CompanionId = tblCompanion.CompanionId where tblEpisodCompanion.EpisodId=@EpisodeId)
    RETURN @return_value
END;