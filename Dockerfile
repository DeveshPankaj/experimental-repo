# Use an official PostgreSQL image from Docker Hub
FROM postgres:latest

# Environment variables for PostgreSQL
ENV POSTGRES_DB=mydatabase \
    POSTGRES_USER=myuser \
    POSTGRES_PASSWORD=mypassword

# Create a directory for initializing the database
RUN mkdir -p /docker-entrypoint-initdb.d

# Copy SQL scripts to initialize the database
COPY init.sql /docker-entrypoint-initdb.d/

# Expose the PostgreSQL port
EXPOSE 5432

# Start PostgreSQL server
CMD ["postgres"]
