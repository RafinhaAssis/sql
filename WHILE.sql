/*Revis�o*/
-->>  PRINT - DBMS_OUTPUT.PUT_LINE


-->> INPUT - aNTES DO BLOCO AONIMO USAMOS O sqlPLUS + VARIAVEL DE SUBSTITUI��O
-->> ACCEPT VARIAVEL PROMPT 'MENSAGEM'
-->> CONDICAO 
/*
IF THEN
ELSIF THEN
ELSE
END IF




-->> Switch Case:
SET SERVEROUTPUT ON;
ACCEPT DIA PROMPT 'ENTRE COM O DIA DA SEMANA:';
DECLARE
    V_DIA INTEGER := &DIA;
BEGIN
    IF V_DIA = 1 THEN
        DBMS_OUTPUT.PUT_LINE('DOMINGO');
    ELSIF V_DIA = 2 THEN
         DBMS_OUTPUT.PUT_LINE('SEGUNDA');
    ELSE
         DBMS_OUTPUT.PUT_LINE('ALGUM DIA AE');
    END IF;
END;
*/
/*
-->> USANDO CASE
SET SERVEROUTPUT ON;
ACCEPT DIA PROMPT 'ENTRE COM O DIA DA SEMANA:';
DECLARE
    V_DIA INTEGER := &DIA;
BEGIN
    CASE V_DIA
        WHEN 1 THEN
            DBMS_OUTPUT.PUT_LINE('DOMINGO');
        WHEN 2 THEN
            DBMS_OUTPUT.PUT_LINE('SEGUNDA');
        ELSE
            DBMS_OUTPUT.PUT_LINE('OUTRO DIA AE');
    END CASE;
END;
*/

/*
--eSTRUTURA DE REPETI��O ITERATIVA LOOP
SET SERVEROUTPUT ON;
ACCEPT DIA PROMPT 'ENTRE COM O NUMERO DA TABUADA QUE DESEJA:';
DECLARE
    V_NUMBER INTEGER := &DIA;
    TABUADA INTEGER;
BEGIN
    FOR I IN 1..10
    LOOP
        TABUADA := I * V_NUMBER;
        DBMS_OUTPUT.PUT_LINE(V_NUMBER || ' x ' || I || ' = ' || TABUADA);
    END LOOP;
END;



-->> USANDO WHILE ITERATIVA 
SET SERVEROUTPUT ON;
ACCEPT DIA PROMPT 'ENTRE COM O NUMERO DA TABUADA QUE DESEJA:';
DECLARE
    INICIO INTEGER;
    V_NUMBER INTEGER := &DIA;
    TABUADA INTEGER;
BEGIN
    INICIO :=  0;
    WHILE INICIO <= 10
    LOOP
        TABUADA := INICIO * V_NUMBER;
        DBMS_OUTPUT.PUT_LINE(V_NUMBER || ' x ' || INICIO || ' = ' || TABUADA);
        INICIO := INICIO + 1;
    END LOOP;
END;


-->> WHILE COM EXIT WHEN
SET SERVEROUTPUT ON;
ACCEPT DIA PROMPT 'ENTRE COM O NUMERO DA TABUADA QUE DESEJA:';
DECLARE
    INICIO INTEGER  :=  0;
    V_NUMBER INTEGER := &DIA;
    TABUADA INTEGER;
BEGIN
    LOOP
    EXIT WHEN INICIO > 10;
        TABUADA := INICIO * V_NUMBER;
        DBMS_OUTPUT.PUT_LINE(V_NUMBER || ' x ' || INICIO || ' = ' || TABUADA);
        INICIO := INICIO + 1;
    END LOOP;
END;

*/






