DECLARE
   countVar NUMBER;
SELECT COUNT(*) INTO countVar FROM user_tables WHERE table_name = 'USERS';
IF countVar <> 0 THEN
      DROP TABLE USERS;
    END IF;

SELECT COUNT(*) INTO countVar FROM user_tables WHERE table_name = 'USER_ROLE';

