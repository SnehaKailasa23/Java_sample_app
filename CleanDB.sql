DECLARE cnt NUMBER;
  BEGIN
    SELECT COUNT(*) INTO cnt FROM user_tables WHERE table_name = 'USERS';
    IF cnt <> 0 THEN
      EXECUTE IMMEDIATE 'DROP TABLE sales';
    END IF;
    SELECT COUNT(*) INTO cnt FROM user_tables WHERE table_name = 'USER_ROLES';
    IF cnt <> 0 THEN
      EXECUTE IMMEDIATE 'DROP TABLE sales';
    END IF;
  END;
