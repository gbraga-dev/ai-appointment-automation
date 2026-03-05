# Automação de Barbearia com IA

Projeto de automação para atendimento ao cliente e agendamento de horários em barbearias utilizando IA e automação de workflows.

## Visão Geral

Este projeto demonstra um sistema automatizado de atendimento ao cliente que integra mensagens do WhatsApp, inteligência artificial e agendamento em calendário.

O assistente entende mensagens em linguagem natural enviadas pelos clientes, verifica a disponibilidade dos profissionais e agenda horários automaticamente.

## Funcionalidades

- Conversa em linguagem natural com clientes
- Agendamento automático de horários
- Verificação de disponibilidade no calendário
- Confirmação de agendamento
- Lembretes automáticos
- Notificação para barbeiros quando um novo agendamento é criado
- Sugestão de produtos com base no serviço escolhido

## Arquitetura

Cliente → WhatsApp → Workflow de Automação → Processamento com IA → Integração com Calendário

## Tecnologias

- n8n (automação de workflows)
- OpenAI API (entendimento de linguagem natural)
- Integração com API do WhatsApp
- Google Calendar API
- REST APIs

## Exemplo de Fluxo

1. Cliente envia mensagem via WhatsApp
2. A IA interpreta o pedido
3. O sistema verifica horários disponíveis
4. O cliente seleciona um horário
5. O agendamento é salvo no calendário
6. O barbeiro recebe uma notificação
7. Um lembrete é enviado antes do horário

## Caso de Uso

Projetado para pequenos negócios como:

- Barbearias
- Salões de beleza
- Clínicas
- Profissionais de serviços

## Autor

GBraga-DEV
