/*
   Sempre que um procedimento é inserido na tabela Tratamento_Procedimento, 
   a trigger atualizará o curso total do tratamento correspondente na tabela Tratamento.
   */
   
   DELIMITER // 
   CREATE TRIGGER AtulizarCustoTratamento
   AFTER INSERT ON Trantamento_Procedimento
   FOR EACH ROW 
   BEGIN 
      DECLARE custo_total DECIMAL(10, 2);
      
      -- Calcula o custo total do tratamento
      SELECT SUM(tp.quantidade * p.custo) INTO custo_total
      FROM Tratamento_Procedimento tp 
      JOIN Procedimento p ON tp.procedimento_id = p.procedimento_id
      WHERE tp.tratamento_id = NEW.tratamento_id;
      
      -- Atualiza o valor total do tratamento na tabela Tratamento 
      UPDATE Tratamento 
      SET valor_total = custo_total
      WHERE tratamento_id = NEW.tratamento_id;
END//
 DELIMITER ;
