
# 🚚 Sistema de Gestão de Entregas para Empresa de Logística

Este projeto implementa uma tabela fictícia para uma empresa de logística, com suporte a operações de CRUD (Create, Read, Update, Delete). A tabela gerencia informações sobre entregas, incluindo destinatário, endereço, data e status.

---

## 📂 Estrutura do Banco de Dados

### 🔑 Tabela: `entregas`

| Campo           | Tipo           | Descrição                           |
|------------------|----------------|-------------------------------------|
| `id_entrega`    | INT (PK)       | Identificador único da entrega.     |
| `destinatario`  | VARCHAR(100)   | Nome do destinatário.               |
| `endereco`      | VARCHAR(255)   | Endereço de entrega.                |
| `data_entrega`  | DATE           | Data prevista para entrega.         |
| `status`        | VARCHAR(50)    | Status da entrega (Pendente, Entregue, Cancelada). |

---

## 🛠️ Operações de CRUD

### 1️⃣ **Create (Inserir uma nova entrega)**

```sql
INSERT INTO entregas (destinatario, endereco, data_entrega, status) 
VALUES ('João Silva', 'Rua A, 123, São Paulo', '2024-11-25', 'Pendente');
```

### 2️⃣ **Read (Consultar entregas)**

- **Selecionar todas as entregas:**
  ```sql
  SELECT * FROM entregas;
  ```

- **Selecionar entregas pendentes:**
  ```sql
  SELECT * FROM entregas WHERE status = 'Pendente';
  ```

### 3️⃣ **Update (Atualizar uma entrega)**

Atualizar o status de uma entrega específica:
```sql
UPDATE entregas 
SET status = 'Entregue'
WHERE id_entrega = 1;
```

### 4️⃣ **Delete (Excluir uma entrega)**

Excluir uma entrega específica:
```sql
DELETE FROM entregas 
WHERE id_entrega = 1;
```
## Criação de tabelas e atualização pelo terminal Linux.


![fedelx1](https://github.com/user-attachments/assets/e7df0bdd-4257-4547-b470-41954e44bbd8)
![fedelx2](https://github.com/user-attachments/assets/6cd4d97c-015d-4824-8396-3b6dc3095867)
![fedelx3](https://github.com/user-attachments/assets/17084631-d6d5-47db-8d61-81b8569b9e2d)


---

## 🚀 Como Automatizar o Banco de Dados

1. Crie o arquivo SQL:
   ```bash
   nano entregas.sql
   ```

2. Adicione o seguinte script ao arquivo:
   ```sql
   CREATE DATABASE empresa_logistica;
   USE empresa_logistica;

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
   ```

3. Execute o script no MySQL:
   ```bash
   mysql -u usuario -p < entregas.sql
   ```

---

## 🔍 Consultas Adicionais

- **Verificar entregas concluídas:**
  ```sql
  SELECT * FROM entregas WHERE status = 'Entregue';
  ```

- **Contar entregas pendentes:**
  ```sql
  SELECT COUNT(*) AS total_pendentes FROM entregas WHERE status = 'Pendente';
  ```

---


## 📝 Licença
Este projeto é de uso livre para estudos e prática. Compartilhe e contribua! 🌟

Feito com ❤️ para ajudar na gestão eficiente de entregas!

### Conecte-se comigo

[![Linkdln](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/douglas-rodrigues-larré-a59637231/)
[![Outlook](https://img.shields.io/badge/Microsoft_Outlook-0078D4?style=for-the-badge&logo=microsoft-outlook&logoColor=white)](dev.larre@outlook.com)
[![Instagram](https://img.shields.io/badge/Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white)](https://www.instagram.com/dev_larre)
[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/DevLarre)

Vamos codar! 🚀

## © Desenvolvido por Dev Larré, 2024


