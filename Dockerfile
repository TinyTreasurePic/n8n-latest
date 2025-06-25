FROM n8nio/n8n:latest

# Run as root to fix permission before switching to node
USER root

# Create and fix permissions for .n8n directory
RUN mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node && \
    chmod -R 775 /home/node/.n8n

# Add a dummy encryption key to avoid n8n creating config again
ENV N8N_ENCRYPTION_KEY="DefaultEncryptionKeyReplaceThis"

# Drop back to node user
USER node
