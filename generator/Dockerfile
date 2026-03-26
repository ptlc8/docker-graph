FROM nginxproxy/docker-gen:latest

COPY templates/mermaid.tmpl /etc/docker-gen/templates/mermaid.tmpl

WORKDIR /output

CMD ["-watch", "/etc/docker-gen/templates/mermaid.tmpl", "/output/graph.mmd"]
