Begin;
delimiter //
CREATE TRIGGER trg_studentinfo_insert
	BEFORE INSERT ON studentinfo
	FOR EACH ROW
	BEGIN
		DECLARE last_id VARCHAR(4);
		SELECT MAX(studentid) INTO last_id FROM studentinfo;
			IF last_id IS NULL THEN
				SET NEW.studentid = 'L101';
			ELSE
				SET NEW.studentid = CONCAT('L', LPAD(SUBSTRING(last_id, 2) + 1, 3, '0'));
			END IF;
	END//
delimiter ;
commit;