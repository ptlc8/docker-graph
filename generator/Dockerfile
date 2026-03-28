FROM nginxproxy/docker-gen:latest

# Install Graphviz
RUN apk add --no-cache graphviz

COPY templates/graphviz.tmpl /etc/docker-gen/templates/graphviz.tmpl
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

WORKDIR /output

ENTRYPOINT ["/entrypoint.sh"]
