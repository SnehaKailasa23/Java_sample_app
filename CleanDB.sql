DECLARE
   countVar NUMBER;
SELECT COUNT(*) INTO countVar FROM user_tables WHERE table_name = 'USERS';

SELECT COUNT(*) INTO countVar FROM user_tables WHERE table_name = 'USER_ROLE';

