FROM n8nio/n8n:latest

# Fix volume permission issue
RUN mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node/.n8n
