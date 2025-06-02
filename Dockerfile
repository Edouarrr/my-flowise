FROM flowiseai/flowise:latest

# Créer les répertoires nécessaires avec les bonnes permissions
RUN mkdir -p /root/.flowise/logs && \
    mkdir -p /root/.flowise/storage && \
    mkdir -p /root/.flowise/uploads && \
    chmod -R 777 /root/.flowise

# Variables d'environnement
ENV PORT=3000
ENV DATABASE_PATH=/root/.flowise
ENV APIKEY_PATH=/root/.flowise
ENV SECRETKEY_PATH=/root/.flowise
ENV LOG_PATH=/root/.flowise/logs
ENV BLOB_STORAGE_PATH=/root/.flowise/storage

WORKDIR /root/.flowise

EXPOSE 3000

CMD ["flowise", "start"]
