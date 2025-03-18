 --Granting permissions 

GRANT CONTROL ON SCHEMA::Sales TO sqluser01;


     EXECUTE AS USER = 'sqluser01';
     SELECT * FROM fn_my_permissions ('Sales', 'SCHEMA');
     REVERT;
     GO

	 --If we wanna revoke all controls on the schema
     REVOKE CONTROL ON SCHEMA::Sales TO sqluser01;

	 -- Denying the 'excecute' permission
     DENY EXECUTE ON SCHEMA::Sales TO sqluser01;



"
     GRANT CONTROL ON SCHEMA::Sales TO sqluser01;


     EXECUTE AS USER = 'sqluser01';
     -- SELECT * FROM fn_my_permissions ('Sales', 'SCHEMA');
     
     select * from [Sales].[CreditCard]
     REVERT;
     GO


     REVOKE UPDATE ON SCHEMA::Sales TO sqluser01;
     DENY EXECUTE ON SCHEMA::Sales TO sqluser01;
     "


     "
     GRANT SELECT ON SCHEMA::Sales TO sqluser01;


     EXECUTE AS USER = 'sqluser01';
      SELECT * FROM fn_my_permissions ('Sales', 'SCHEMA');
     
     -- select * from [Sales].[CreditCard]
     REVERT;
     GO


     REVOKE UPDATE ON SCHEMA::Sales TO sqluser01;
     DENY SELECT ON SCHEMA::Sales TO sqluser01;
     "
