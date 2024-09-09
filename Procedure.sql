/*
   Vamos criar uma procedure para gerar um relatório de todas as consultas de um paciente específico, incluindo informações sobre o paciente,
   dentista e data da consulta. Essa procedure pode ser util para consultas rápidas de atendimento dee um paciente.
*/
DELIMITER // 

CREATE PROCEDURE RelatorioConsultasPaciente(IN pacienteId INT)
BEGIN 
    -- Seleciona detalhess das consultas do paciente
    SELECT 
	    c.conusulta_id, 
	    p.nome AS paciente_nome,
	    d.nome AS dentista_nome,
	    c.data_consulta
   FROM 
         Consulta c 
   INNER JOIN
         Paciente p ON c.paciente_id = p.paciente_id 
   WHERE 
		 p.paciente_id = pacienteId;
END//       

DELIMITER ;
