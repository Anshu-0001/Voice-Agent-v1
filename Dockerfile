FROM n8nio/n8n:1.81.1

# Force installation path so Render doesn't override binaries
USER root

# Make sure the n8n binary is executable
RUN chmod +x /usr/local/bin/n8n

USER node

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV NODE_ENV=production

EXPOSE 5678

ENTRYPOINT ["tini", "--"]
CMD ["n8n"]
