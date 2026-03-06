# Sistema de Agendamento com Inteligência Artificial

![License](https://img.shields.io/badge/license-MIT-blue)
![AI](https://img.shields.io/badge/AI-OpenAI-green)
![Automation](https://img.shields.io/badge/Automation-n8n-orange)
![Database](https://img.shields.io/badge/Database-PostgreSQL-blue)

Um sistema inteligente de agendamento que automatiza interações entre clientes e profissionais utilizando inteligência artificial, automação de workflows e integração com calendário.

Este projeto demonstra como IA conversacional pode ser utilizada para gerenciar fluxos de agendamento como:

* marcação de horários
* reagendamento
* cancelamentos
* consulta de disponibilidade
* lembretes automáticos

---

# Arquitetura do Sistema

O sistema é dividido em várias camadas para garantir modularidade e escalabilidade:

1. Camada de Comunicação
2. Identificação do Usuário
3. Detecção de Intenção por IA
4. Fluxo do Cliente
5. Fluxo do Profissional
6. Tratamento de Erros

A arquitetura separa as interações do cliente das ações de gerenciamento do profissional, permitindo que o sistema seja utilizado em negócios reais como barbearias, clínicas e salões de beleza.

---

# Diagrama da Arquitetura

![Arquitetura do Sistema](docs/workflow-diagram.png)

---

# Tecnologias Utilizadas

### Automação

* n8n (workflow automation)

### Inteligência Artificial

* OpenAI API para detecção de intenção e geração de respostas

### Banco de Dados

* PostgreSQL

### Integrações Externas

* Google Calendar para gerenciamento de agendamentos
* API de mensagens (WhatsApp / SMS)

### Conceitos de Infraestrutura

* Webhooks para recebimento de mensagens
* Agentes de IA para interpretar intenções
* Persistência de dados em banco de dados

---

# Funcionalidades Principais

### Funcionalidades para Clientes

* Agendar horário
* Reagendar atendimento
* Cancelar agendamento
* Consultar horários disponíveis
* Receber confirmação de agendamento
* Receber lembretes automáticos
* Receber recomendações de serviços (upsell com IA)

---

### Funcionalidades para Profissionais

* Visualizar agenda
* Bloquear horários
* Reagendar atendimentos
* Cancelar agendamentos
* Receber confirmações das alterações

---

# Visão Geral do Fluxo

### Fluxo do Cliente

1. Cliente envia mensagem
2. Webhook recebe a requisição
3. Sistema identifica o tipo de usuário
4. IA detecta a intenção da mensagem
5. O workflow executa a ação correspondente
6. Calendário e banco de dados são atualizados
7. Mensagem de confirmação é enviada

---

### Fluxo do Profissional

O profissional pode gerenciar sua agenda através de:

* visualização da agenda
* bloqueio de horários
* reagendamento de atendimentos
* cancelamento de agendamentos

Todas as alterações são sincronizadas com o calendário e o banco de dados.

---

# Tratamento de Erros

O sistema inclui um fluxo centralizado de tratamento de erros:

* registro de erros (logs)
* tentativa automática de repetição
* notificação ao administrador
* envio de mensagem alternativa ao usuário

---

# Melhorias Futuras

Possíveis melhorias para versões futuras:

* camada de validação de dados
* detecção de no-show
* integração com pagamentos
* dashboard de analytics
* suporte para múltiplos profissionais
* otimização de agenda com IA

---

# Estrutura do Projeto

ai/
customer-system-prompt.txt
professional-system-prompt.txt

database/
database-schema.sql

docs/
project-overview.md
workflow-diagram.png

workflows/
n8n-workflow-example.json

LICENSE
README.md
README-PT.md

---

# Autor

Desenvolvido por GBraga-DEV

---

# Licença

Este projeto está licenciado sob a licença MIT.
