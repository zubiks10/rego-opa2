# Use a base image with OPA pre-installed
FROM openpolicyagent/opa:latest

# Set working directory
WORKDIR /app

# Copy your REGO files into the container
COPY policy.rego /app/policy.rego

# Expose the OPA server's API port
EXPOSE 8181

# Start OPA server and load your policy
CMD ["run", "--server", "/app/policy.rego"]
