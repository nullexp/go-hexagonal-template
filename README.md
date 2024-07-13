
# Hexagonal Architecture Template for Golang Applications with Docker

This repository serves as a template for building Golang applications using Hexagonal Architecture. It includes Docker support for easy containerized deployment. Follow the instructions below to get started.

```bash 
hexagonal-golang-template/
├── cmd/             # Entry points of the application
│   ├── main.go      # main file
├── docs/            # Project documentations
├── api/             # Project APIs, OpenAPI files, and gRPC proto files
│   ├── proto/             # grpc proto files
│   │   ├── user_service.proto  # User service proto file example
│   │   ├── user_type.proto  # User type proto file example
│   ├── openapi/             # open api files
│   │   ├── user.yaml        # user yaml file example
├── internal/        # Application core (business logic)
│   ├── adapter/     # Adapter files
│   │   ├── driven/  # Driven adapters (secondary)
│   │   │   ├── db/  # Database adapters
│   │   │   │   ├── migration/  # Database migrations
│   │   │   │   │   ├── init.sql/  # Database Initlizer sql file
│   │   │   │   ├── repository/  # Database repositories
│   │   │   │   │   ├── user.go  # User repository sample
│   │   │   │   │   ├── user_mock.go  # User repository mock sample
│   │   │   │   ├── db_handler.go # Database handler used in repositories
│   │   │   │   ├── postgres_transaction.go # DB Transaction manager for postgres
│   │   │   │   ├── postgres_transaction_mock.go # DB Transaction manager mock for postgres used in testing
│   │   ├── driver/  # Driver adapters (primary)
│   │   │   ├── grpc/ # gRPC adapters
│   │   │   ├── http/ # http handler adapters
│   │   │   ├── service/ # Service adapters
│   │   │   │   ├── user.go # User service example
│   │   │   ├── model/ # Service models
│   │   │   │   ├── user.go # User model example
│   │   │   ├── error/ # Service models
│   │   │   │   ├── user.go # Error model sample
│   ├── domain/      # Domain logic and models
│   ├── port/        # Port files
│   │   ├── driven/  # Driven ports (secondary)
│   │   │   ├── db/  # Database ports
│   │   │   │   ├── repository/  # Database repositories
│   │   │   │   │   ├── user.go  # User repository sample
│   │   ├── driver/  # Driver ports (primary)
│   │   │   ├── service/ # Service ports
│   │   │   │   ├── user.go # User service example
│   │   │   ├── models/ # Service models
├── pkg/             # Shared utilities and packages
├── test/            # Integration tests
├── .env.example     # Example environment file
├── docker-compose.yml # Docker Compose configuration
├── Dockerfile       # Dockerfile for building the application image
├── Makefile         # Project make file
├── README.md        # Project documentation
``` 
