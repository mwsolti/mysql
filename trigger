Create Trigger TRG_atualiza_estoque after insert
on mercado.aux_estoque
for each row
Call SP_atualiza_estoque (new.operacao, new.qt_produto, new.id_estoque);

delimiter ;
