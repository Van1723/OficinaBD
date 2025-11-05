# 🛠️ Sistema de Gestão de Oficina Mecânica
![MySQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)
![Workbench](https://img.shields.io/badge/MySQL%20Workbench-00618A?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-025E8C?style=for-the-badge)
![VSCode](https://img.shields.io/badge/VS%20Code-0078D4?style=for-the-badge&logo=visual-studio-code&logoColor=white)
![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-000?style=for-the-badge&logo=github&logoColor=white)


Este projeto consiste na modelagem e implementação de um banco de dados completo para gestão de uma oficina mecânica, incluindo clientes, veículos, mecânicos, serviços, ordens de serviço e itens executados.

O objetivo é demonstrar habilidades em:

- Modelagem de dados (conceitual & lógico)
- Criação e relacionamento de tabelas
- Integridade referencial (PK, FK, ON DELETE/UPDATE)
- População de dados fictícios para teste
- Consultas SQL com joins, agregações e filtros

---


---

## 🧱 Modelagem do Banco de Dados

![Status](https://img.shields.io/badge/STATUS-CONCLUÍDO-success?style=for-the-badge)
![Modelagem ER](https://img.shields.io/badge/Modelagem%20ER-4C8EDA?style=for-the-badge)
![Normalização](https://img.shields.io/badge/Normalização-176F6B?style=for-the-badge)
![Consultas SQL](https://img.shields.io/badge/Consultas%20SQL-4B0082?style=for-the-badge)

### 🧠 Entidades

| Entidade | Descrição |
|---|---|
| Cliente | Proprietário do veículo |
| Veiculo | Automóveis atendidos pela oficina |
| Mecanico | Responsáveis pelos serviços |
| Servico | Serviços prestados |
| OrdemServico | Execução e acompanhamento dos serviços |
| ItemServico | Detalhamento dos serviços na OS |

### 🔗 Relacionamentos

| Relacionamento | Tipo | Descrição |
|---|---|---|
Cliente → Veiculo | 1:N | Um cliente pode possuir vários veículos |
Veiculo → OrdemServico | 1:N | Um veículo pode ter várias ordens |
Mecanico → OrdemServico | 1:N | Um mecânico pode ter várias ordens |
OrdemServico → ItemServico | 1:N | Uma OS pode ter vários itens |
Servico → ItemServico | 1:N | Um serviço pode aparecer em várias OS |

---

## 🛠️ Tecnologias Utilizadas

- **MySQL** – Banco de dados relacional
- **MySQL Workbench** – Modelagem visual e execução do SQL
- **VS Code** – Organização do projeto e versionamento
- **Git/GitHub** – Controle de versão e portfólio

---

## ▶️ Como Executar o Projeto

1. Clone este repositório
2. Abra a pasta `SQL/`
3. Execute os arquivos na ordem:

01_create oficinaBD.sql
02_insert oficinaBD.sql
02_queries oficinaBDsql

4. Verifique as tabelas e resultados das consultas

---

## 📊 Exemplos de Consultas SQL

- Listagem completa com joins
- Total gasto por cliente
- Serviços mais realizados
- Histórico de OS por veículo
- Quantidade de OS por mecânico
- Conferência do valor da OS vs itens

Essas consultas estão no arquivo `03_queries oficinaBD.sql`.

---
## ✅ Resultados Esperados

- Banco de dados normalizado e funcional
- Relacionamentos com integridade referencial
- Conjunto de dados realistas para testes
- Relatórios úteis para gestão da oficina

## 👩‍💻 Autora

**Vanessa Silva**

- Estudante de Engenharia de Computação
- Técnica em Informática e Meio Ambiente
- Focada em desenvolvimento e bancos de dados

---

## ⭐ Contribuições

Sinta-se à vontade para sugerir melhorias, abrir issues e contribuir com o projeto!

Se este projeto te ajudou, não esqueça de dar uma ⭐ no repositório 😊

---


📄 Licença

Uso livre para fins de estudo e portfólio.
