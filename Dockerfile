FROM n8nio/n8n:latest

# n8n listens on 5678 by default
ENV PORT=5678
EXPOSE 5678

# Persisted path for n8n data (when using persistent disk)
VOLUME /home/node/.n8n

CMD ["n8n", "start"]
