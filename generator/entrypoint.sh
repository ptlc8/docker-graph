#!/bin/sh
set -e

# Start docker-gen in background to generate DOT file
docker-gen -watch -notify "fdp -Tsvg -Gbgcolor=transparent /output/graph.dot -o /output/graph.svg" \
    /etc/docker-gen/templates/graphviz.tmpl /output/graph.dot &

# Wait for processes
wait
