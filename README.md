# 🍽️ Recipe Web App

A full-stack recipe web application built with React, TypeScript, Node.js/Express, and PostgreSQL. Login/registration has cookie-based authentication and passwords are securely hashed using bcrypt before storage and validated using bcrypt.compare during authentication.

Browse through a variety of recipes and save your favorites for easy access.

## Deployment

The application is deployed using:

-Frontend: Vercel
-Backend: Render
-Database: Neon PostgreSQL

## 🗄️ Database Migration

The project originally used SQLite during development and was later migrated in July 2026 to PostgreSQL to support a production environment. The old schema sql schema is kept as "old-sqlite.sql" to show the migration history.

The migration included:

- Migrating exsisting users and recipes
- Updating SQL queries from SQLite syntax to PostgreSQL
- Updating authentication and database connection handling

## ✨ Features

- 🔍 Browse through a variety of recipes
- ❤️ Save recipes to your favorites
- 🍪 **Login/Registration** — cookie-based authentication with express-session and connect-pg-simple for persistent session storage _(May 2026, Migrated to PostgreSQL July 2026)_

## 🛠️ Tech Stack

| Layer    | Technologies                 |
| -------- | ---------------------------- |
| Frontend | React, TypeScript, HTML, CSS |
| Backend  | Node.js/Express              |
| Database | PostgreSQL                   |
