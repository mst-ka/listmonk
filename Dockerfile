FROM listmonk/listmonk:v4.1.0
ARG PORT PGDATABASE PGHOST PGPASSWORD PGPORT PGUSER
COPY config.sh ./config.sh
RUN chmod +x ./config.sh && ./config.sh
RUN ./listmonk --yes --upgrade || ./listmonk --install --idempotent --yes
