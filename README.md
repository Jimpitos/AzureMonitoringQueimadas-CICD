# 🌍 Azure Monitoring Queimadas - CI/CD & Terraform

Projeto de monitoramento de focos de queimadas no Brasil integrando dados abertos do INPE, infraestrutura gerenciada como código via **Terraform**, processamento Serverless com **Azure Functions** e automação com **GitHub Actions**.

---

## 🏗️ Arquitetura da Solução

* **Infraestrutura como Código (IaC):** Terraform gerenciando recursos na Azure.
* **Banco de Dados:** Azure Database for MySQL Flexible Server com tabelas, índices e views otimizadas.
* **Backend Serverless:** Azure Function (Python v2) para extração e carga de dados de queimadas.
* **CI/CD:** GitHub Actions para validação (`terraform plan`), provisionamento (`terraform apply`), deploy contínuo de código e pipeline de destruição controlada.

---

## 📁 Estrutura do Repositório

```text
├── .github/
│   └── workflows/
│       ├── ci-cd-infra-function.yml   # Pipeline de CI/CD (Plan, Apply e Deploy)
│       └── ci-cd-infra-destroy.yml    # Pipeline manual para destruição de recursos
├── function/
│   ├── sql/
│   │   └── create_tables.sql          # DDL do banco e views
│   ├── function_app.py                # Lógica da Azure Function (ETL INPE)
│   ├── host.json                      # Configurações do runtime da Function
│   └── requirements.txt               # Dependências Python
├── infra/
│   ├── main.tf                        # Definição dos recursos Azure via Terraform
│   ├── outputs.tf                     # Saídas de conexão e identificadores
│   └── variables.tf                   # Variáveis e parametrização
└── .gitignore                         # Arquivos ignorados pelo controle de versão
