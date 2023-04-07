-- Computes and stores the avarage score of a student
-- The score can be a decimal
DELIMITER $$ ;
CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id int)
BEGIN 
   UPDATE users
   	SET average_score=(SELECT AVG(score) FROM corrections
			     WHERE corrections.user_id=user_id)
	WHERE id=user_id;
END;$$
DELIMITER ;