# Docker Graph

Visualisation automatique de l'infrastructure Docker avec Graphviz. Les conteneurs sont regroupés par service avec leurs réplicas, colorés par type, et organisés par projet Compose.

## Démarrage

```bash
docker-compose up -d
```

Puis ouvrir http://localhost:6498 dans votre navigateur.

## Fonctionnement

- **docker-gen** scrute Docker et génère un fichier DOT (format Graphviz)
- **Graphviz (fdp)** convertit le DOT en SVG avec layout force-directed
- **nginx** sert la page web et le SVG sur http://localhost:6498

## Couleurs

- 🔵 **Database** : Postgres, MySQL, Mongo, MariaDB, Elasticsearch, SQLite, pgAdmin, Adminer...
- 🟡 **Cache** : Redis, Memcached...
- 🟣 **Proxy** : Nginx, Traefik, Caddy, HAProxy, HTTPd...
- 🟢 **Auth** : Kratos, Jackson, Keycloak, Vault, OAuth...
- 🟠 **Messaging** : RabbitMQ, Kafka, SMTP...
- ⚪ **Monitoring** : Prometheus, Grafana...
- 🔴 **App** : API, Backend, Frontend, Web (détecté par nom)
- ⚫ **Service** : Autres services (par défaut)

## Fonctionnalités

- **Clusters Compose** : Boîtes regroupant les services par projet
- **Réplicas** : Affichage du nombre de réplicas (×N) pour les services scalés
- **Réseaux externes** : Affichés en ellipse avec liens pointillés
- **Dépendances** : Flèches entre services basées sur `depends_on`

## Intégration

Compatible avec [apache-docker-proxy](https://github.com/ptlc8/apache-docker-proxy).

## TODO

- Afficher les ports exposés sur chaque service
