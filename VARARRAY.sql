--> VARRAY

-->> O vetor � uma especie de lista do python. 
-->> O nosso evento � declarar uma lista de n�meros

SET SERVEROUTPUT ON;
DECLARE
    TYPE VECTOR_NUM_5_ELEMENTOS IS VARRAY(5) OF NUMBER;
    LISTA_IDADES VECTOR_NUM_5_ELEMENTOS;
BEGIN
    LISTA_IDADES := VECTOR_NUM_5_ELEMENTOS(12,34,7,8,87);
    FOR I IN 1..5
    LOOP
        DBMS_OUTPUT.PUT_LINE('A IIDADE � '|| LISTA_IDADES(I));
    END LOOP;
END;