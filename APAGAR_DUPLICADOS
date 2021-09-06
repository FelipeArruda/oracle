delete from tmp_ap11slu_465 a
where EXISTS(
    select x.ROWID, X.ID_CHAM_CD_CHAMADO, X.PESS_CD_CORPORATIVO, X.ID_PESS_CD_PESSOA, X.ROW_NUM from 
    (
    SELECT
        ID_CHAM_CD_CHAMADO, PESS_CD_CORPORATIVO, ID_PESS_CD_PESSOA, row_number() OVER(PARTITION BY ID_CHAM_CD_CHAMADO, PESS_CD_CORPORATIVO, ID_PESS_CD_PESSOA ORDER BY PESS_CD_CORPORATIVO, ID_PESS_CD_PESSOA) as row_num -- classifica os repetidos
    FROM
        tmp_ap11slu_465
    ) x where x.row_num > 1 and a.rowid = X.ROWID -- usa o rowid para excluir os que retornaram da consulta abaixo
) 
;
