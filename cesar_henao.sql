--------------------------------------------------------
-- Archivo creado  - miércoles-abril-25-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function FUNCTION_1
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "EJERCICIOS"."FUNCTION_1" (a IN number, b IN NUMBER, c IN NUMBER) 
  RETURN VARCHAR2
  IS
  VAR VARCHAR2(20);
    BEGIN

        IF b >= c THEN
          VAR:= (TO_CHAR(a)) || '/' || (TO_CHAR(a*b)) || '/' || 'andrés';
        ELSE
          VAR:= (TO_CHAR(a)) || '/' || (TO_CHAR(a*b)) || '/' || 'martínez';
        END IF;

RETURN (VAR);
END;
--------------------------------------------------------
--  DDL for Function FUNCTION_2
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "EJERCICIOS"."FUNCTION_2" (x IN number) 
  RETURN number IS
 e number := 0;
   first number:=0;
    second number:=1;
    third number;
    i number;
    BEGIN
   for i in 1..x
    loop
        third:=first+second;
        first:=second;
        second:=third;
    end loop;
    RETURN third;
END;
