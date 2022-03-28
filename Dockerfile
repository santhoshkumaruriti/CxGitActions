#Use AST Base image
FROM checkmarx/ast-cli:2.0.13

#Copy the entrypoint script and properties used for the action
COPY entrypoint.sh /app/entrypoint.sh
COPY cleanup.sh /app/cleanup.sh

RUN chmod +x /app/entrypoint.sh
RUN chmod +x /app/cleanup.sh
