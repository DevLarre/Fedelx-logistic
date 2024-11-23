-- Criar o banco de dados
CREATE DATABASE empresa_logistica;
USE empresa_logistica;

-- Criar a tabela entregas
CREATE TABLE entregas (
    id_entrega INT AUTO_INCREMENT PRIMARY KEY,
    destinatario VARCHAR(100) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    data_entrega DATE NOT NULL,
    status VARCHAR(50) NOT NULL
);

INSERT INTO entregas (destinatario, endereco, data_entrega, status) 
VALUES 
('João Silva', 'Rua A, 123, São Paulo', '2024-11-25', 'Pendente'),
('Maria Souza', 'Av. B, 456, Rio de Janeiro', '2024-11-26', 'Pendente'),
('Carlos Oliveira', 'Rua C, 789, Belo Horizonte', '2024-11-27', 'Pendente');

SELECT * FROM entregas;

UPDATE entregas 
SET status = 'Entregue'
WHERE id_entrega = 1;

DELETE FROM entregas 
WHERE id_entrega = 3;