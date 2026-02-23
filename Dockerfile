FROM postgres:17-alpine

# Install AWS CLI and bash
RUN apk add --no-cache \
    aws-cli \
    bash

# Copy the backup script
COPY backup.sh /usr/local/bin/backup.sh
RUN chmod +x /usr/local/bin/backup.sh

ENTRYPOINT ["/usr/local/bin/backup.sh"]
