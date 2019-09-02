DELIMITER //
DROP PROCEDURE IF EXISTS UpdateData;
CREATE PROCEDURE UpdateData()

BEGIN
	SET @json = '[
	{
		"username":"test",
		"id":502
	},
	{
		"username":"test2",
		"id":32
	},
	{
		"username":"test3",
		"optional":"optional text",
		"id":565
	}]';

	SET @i = 0;
	SET @ids = "";
	SET @length = JSON_LENGTH(@json);

	WHILE @i < @length DO

			SET @id 	= JSON_UNQUOTE(JSON_EXTRACT(@json, CONCAT("$[", @i, "].id")));
			SET @username 	= JSON_UNQUOTE(JSON_EXTRACT(@json, CONCAT("$[", @i, "].username")));
			SET @optional 	= JSON_UNQUOTE(JSON_EXTRACT(@json, CONCAT("$[", @i, "].optional")));

			-- Update
			UPDATE table_name SET

					username = @username,
					optional = CASE WHEN @optional IS NOT NULL THEN @optional ELSE "" END

			WHERE id = @id;

			SET @ids = CONCAT(@ids, @id);
			IF (@i + 1 < @length) THEN SET @ids = CONCAT(@ids, ","); END IF;

			SET @i = @i + 1;

	END WHILE;

	-- Checkup
	SET @query = CONCAT('SELECT id, status, username, optional FROM table_name WHERE id IN(', @ids, ')');

	PREPARE query FROM @query;
	EXECUTE query;

END //
