# Project Overview

This project explores the use of AI and workflow automation to build an intelligent assistant capable of handling appointment scheduling for service-based businesses.

The goal is to reduce manual work in customer service by automating conversations, appointment management, and notifications.

## Problem

Small businesses such as barbershops and beauty salons often manage appointments manually through messaging apps. This can lead to:

- Scheduling conflicts
- Delayed responses to customers
- Lack of appointment reminders
- Difficulty managing staff availability

## Proposed Solution

This project implements an AI-powered assistant that automates the entire scheduling process through messaging platforms.

The assistant is able to:

- Understand natural language messages from customers
- Identify the user type (customer or professional)
- Check availability of professionals
- Schedule appointments automatically
- Send confirmations and reminders
- Allow professionals to manage their schedules

## System Architecture

The system is built around a workflow automation engine responsible for orchestrating all integrations.

Main components include:

- Messaging API for receiving user messages
- Workflow automation using n8n
- AI processing through OpenAI API
- PostgreSQL database for user management
- Google Calendar for appointment scheduling

## Automation Workflow

1. A message is received through a webhook.
2. The system extracts the user's phone number.
3. The database is queried to identify the user type.
4. The workflow routes the message to the appropriate AI logic.
5. The AI determines the user's intent.
6. The system interacts with external services (calendar, database).
7. A response is sent back to the user.

## Use Case

Although the prototype simulates a barbershop scenario, the architecture can be adapted to other businesses that rely on appointment scheduling.
