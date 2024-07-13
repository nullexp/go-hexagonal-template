
# Hexagonal Architecture Template for Golang Applications with Docker

This repository serves as a template for building Golang applications using Hexagonal Architecture. It includes Docker support for easy containerized deployment. Follow the instructions below to get started.

```bash 
hexagonal-golang-template/
.
|--- api # API definitions
|   |--- openapi # OpenAPI specifications
|   |   |--- README.md # Documentation for OpenAPI specifications
|   |   |--- user.yaml # OpenAPI definition for User service
|   |--- proto # Protocol buffer definitions
|   |   |--- user
|   |   |   |--- v1
|   |   |   |   |--- user_service.proto # gRPC service definition for User service
|   |   |   |   |--- user_type.proto # gRPC message definitions for User service
|   |   |--- buf.gen.yaml # buf generate configuration
|   |   |--- buf.yaml # buf configuration
|   |   |--- README.md # Documentation for proto files
|--- cmd # Main application entry points
|   |--- main.go # Main application file
|   |--- README.md # Documentation for cmd directory
|--- docs # Project documentation
|   |--- README.md # Documentation for docs directory
|   |--- tree.md # Directory tree structure
|--- internal # Internal application code
|   |--- adapter # Adapters layer
|   |   |--- driven # Driven adapters (secondary)
|   |   |   |--- db # Database related code
|   |   |   |   |--- migration # Database migration files
|   |   |   |   |   |--- 000001_create_users_table.down.sql # SQL for down migration
|   |   |   |   |   |--- 000001_create_users_table.up.sql # SQL for up migration
|   |   |   |   |   |--- init.sql # SQL script for initial setup
|   |   |   |   |   |--- README.md # Documentation for migration files
|   |   |   |   |--- repository # Repositories for database interactions
|   |   |   |   |   |--- README.md # Documentation for repository
|   |   |   |   |   |--- user.go # User repository implementation
|   |   |   |   |   |--- user_mock.go # Mock implementation for user repository
|   |   |   |   |--- db_handler.go # Database handler
|   |   |   |   |--- postgres_transaction.go # Postgres transaction implementation
|   |   |   |   |--- postgres_transaction_mock.go # Mock implementation for postgres transaction
|   |   |   |--- passowrd.go # Password handling utilities
|   |   |--- driver # Driver adapters (primary)
|   |   |   |--- grpc # gRPC server code
|   |   |   |   |--- proto
|   |   |   |   |   |--- user
|   |   |   |   |   |   |--- v1
|   |   |   |   |   |   |   |--- user_service.pb.go # Generated gRPC code
|   |   |   |   |   |   |   |--- user_service_grpc.pb.go # Generated gRPC code
|   |   |   |   |   |   |   |--- user_type.pb.go # Generated gRPC code
|   |   |   |   |--- README.md # Documentation for gRPC server code
|   |   |   |   |--- user_service.go # gRPC service implementation
|   |   |   |--- http # HTTP server code
|   |   |   |   |--- README.md # Documentation for HTTP server code
|   |   |   |--- model # Models used in the application
|   |   |   |   |--- README.md # Documentation for models
|   |   |   |--- service # Application services
|   |   |   |   |--- README.md # Documentation for services
|   |   |   |   |--- user_service.go # User service implementation
|   |   |   |   |--- user_service_test.go # Tests for user service
|   |   |   |--- README.md # Documentation for adapters layer
|   |--- domain # Domain layer (core business logic)
|   |   |--- error # Domain errors
|   |   |   |--- user.go # User-related errors
|   |   |--- model # Domain models
|   |   |   |--- user.go # User domain model
|   |   |--- README.md # Documentation for domain layer
|   |--- port # Ports layer (interfaces)
|   |   |--- driven # Interfaces for driven adapters
|   |   |   |--- db # Database interfaces
|   |   |   |   |--- repository # Repository interfaces
|   |   |   |   |   |--- README.md # Documentation for repository interfaces
|   |   |   |   |   |--- user.go # User repository interface
|   |   |   |   |--- db_handler.go # Database handler interface
|   |   |   |   |--- db_transaction.go # Database transaction interface
|   |   |   |--- passowrd.go # Password interface
|   |   |--- driver # Interfaces for driver adapters
|   |   |   |--- model
|   |   |   |   |--- README.md # Documentation for model interfaces
|   |   |   |   |--- user.go # User model interface
|   |   |   |--- service
|   |   |   |   |--- README.md # Documentation for service interfaces
|   |   |   |   |--- user.go # User service interface
|--- pkg # Package level utilities
|   |--- README.md # Documentation for package level utilities
|--- script # Utility scripts
|   |--- create_tree.ps1 # Script to create directory tree
|   |--- fill_tree.ps1 # Script to fill tree
|--- test # Test related files
|   |--- README.md # Documentation for test files
|--- .env # Environment variables
|--- .env.example # Example environment variables
|--- .gitignore # Git ignore file
|--- docker-compose.yml # Docker Compose configuration
|--- Dockerfile # Dockerfile for building the application
|--- go.mod # Go module file
|--- go.sum # Go dependencies
|--- Makefile # Makefile for task automation
|--- README.md # Project documentation
``` 
