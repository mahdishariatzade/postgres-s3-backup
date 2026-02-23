FROM alpine:3.19

# Install PostgreSQL client, AWS CLI, and bash
RUN apk add --no-cache \
    postgresql16-client \
    aws-cli \
    bash

# Copy the backup script
COPY backup.sh /usr/local/bin/backup.sh
RUN chmod +x /usr/local/bin/backup.sh

ENTRYPOINT ["/usr/local/bin/backup.sh"]
