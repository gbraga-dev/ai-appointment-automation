# AI Appointment Automation

Automation project for barbershop customer service and appointment scheduling using AI and workflow automation.

## Overview

This project demonstrates an automated customer service system that integrates WhatsApp messaging, artificial intelligence and calendar scheduling.

The assistant understands natural language messages from customers, checks professionals' availability and schedules appointments automatically.

## Features

- Natural language conversation with customers
- Automated appointment scheduling
- Calendar availability check
- Appointment confirmation
- Automatic reminders
- Notification to barbers when a new appointment is created
- Product suggestion based on service

## Architecture

Customer → WhatsApp → Automation Workflow → AI Processing → Calendar Integration

## Technologies

- n8n (workflow automation)
- OpenAI API (natural language understanding)
- WhatsApp API integration
- Google Calendar API
- REST APIs

## Example Flow

1. Customer sends message via WhatsApp
2. AI interprets the request
3. System checks available slots
4. Customer selects a time
5. Appointment is saved in calendar
6. Barber receives notification
7. Reminder sent before appointment

## Use Case

Designed for small businesses such as:

- Barbershops
- Beauty salons
- Clinics
- Service professionals

## Author

GBraga-DEV
