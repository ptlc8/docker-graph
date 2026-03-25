# Docker Graph

Visualisation automatique de l'infrastructure Docker en Mermaid. Les conteneurs sont regroupés par service avec leurs réplicas, colorés par type, et organisés par projet Compose.

## Démarrage

```bash
docker-compose up -d
```

Puis ouvrir http://localhost:6498 dans votre navigateur.

## Fonctionnement

- **docker-gen** scrute Docker et génère `web/graph.mmd`
- **nginx** sert la page sur http://localhost:6498
- **Mermaid.js** rend le diagramme dans le navigateur
- Le graphe se met à jour automatiquement (mode `-watch`)

## Couleurs

- 🔵 Database (Postgres, MySQL, Mongo...)
- 🟡 Cache (Redis)
- 🟣 Proxy (Nginx, Traefik)
- 🟢 Auth (Kratos, Jackson...)
- 🔴 App (API, Backend, Web...)
- 🟠 Messaging (RabbitMQ, Kafka, Mail...)
- ⚪ Service (générique)

## TODO

- Afficher les ports exposés sur chaque service
