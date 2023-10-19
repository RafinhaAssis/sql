/*
DECLARE
--    V_CODIGO INTEGER;
--    V_TITULO VARCHAR2(200);
    V_CODIGO T_BS_LIVRO.CD_CODIGO%TYPE;
    V_TITULO T_BS_LIVRO.TX_TITULO%TYPE;
BEGIN
    FOR I IN 6..15
    LOOP 
        SELECT 
            CD_CODIGO,
            TX_TITULO
        INTO
            V_CODIGO,
            V_TITULO
        FROM
            T_BS_LIVRO
        WHERE 
            CD_CODIGO = I;
        DBMS_OUTPUT.PUT_LINE('O TITULO É '|| V_TITULO || '. O CODIGO É '|| V_CODIGO);
    END LOOP;
END;
*/
--> USANDO ROWTYPE
DECLARE
    V_ROW T_BS_LIVRO%ROWTYPE;
BEGIN
    FOR I IN 6..15
    LOOP 
        SELECT 
            *
        INTO
           V_ROW.CD_CODIGO,
           V_ROW.TX_TITULO,
           V_ROW.NR_NUMERO_PAGINAS,
           V_ROW.NR_ANO_PUBLICACAO,
           V_ROW.NR_EDICAO,
           V_ROW.CD_AUTOR
        FROM
            T_BS_LIVRO
        WHERE 
            CD_CODIGO = I;
        DBMS_OUTPUT.PUT_LINE('O TITULO É '|| V_ROW.TX_TITULO || '. O CODIGO É '|| V_ROW.CD_CODIGO );
    END LOOP;
END;