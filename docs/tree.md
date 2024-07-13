.
|--- api
|   |--- openapi
|   |   |--- README.md
|   |   |--- user.yaml
|   |--- proto
|   |   |--- README.md
|   |   |--- user_service.proto
|   |   |--- user_type.proto
|--- cmd
|   |--- main.go
|   |--- README.md
|--- docs
|   |--- README.md
|   |--- tree.md
|--- internal
|   |--- adapter
|   |   |--- driven
|   |   |   |--- db
|   |   |   |   |--- migration
|   |   |   |   |   |--- init.sql
|   |   |   |   |   |--- README.md
|   |   |   |   |--- repository
|   |   |   |   |   |--- README.md
|   |   |   |   |   |--- user.go
|   |   |   |   |   |--- user_mock.go
|   |   |   |   |--- db_handler.go
|   |   |   |   |--- postgres_transaction.go
|   |   |   |   |--- postgres_transaction_mock.go
|   |   |--- driver
|   |   |   |--- grpc
|   |   |   |   |--- README.md
|   |   |   |--- http
|   |   |   |   |--- README.md
|   |   |   |--- model
|   |   |   |   |--- README.md
|   |   |   |   |--- user.go
|   |   |   |--- service
|   |   |   |   |--- README.md
|   |   |   |   |--- user.go
|   |   |   |--- README.md
|   |--- domain
|   |   |--- README.md
|   |--- port
|   |   |--- driven
|   |   |   |--- db
|   |   |   |   |--- repository
|   |   |   |   |   |--- README.md
|   |   |   |   |   |--- user.go
|   |   |--- driver
|   |   |   |--- error
|   |   |   |   |--- user.go
|   |   |   |--- model
|   |   |   |   |--- README.md
|   |   |   |--- service
|   |   |   |   |--- README.md
|   |   |   |   |--- user.go
|--- pkg
|--- test
|--- .env.example
|--- create_tree.ps1
|--- docker-compose.yml
|--- Dockerfile
|--- Makefile
|--- README.md
.
|--- api
|   |--- openapi
|   |   |--- README.md
|   |   |--- user.yaml
|   |--- proto
|   |   |--- user
|   |   |   |--- v1
|   |   |   |   |--- user_service.proto
|   |   |   |   |--- user_type.proto
|   |   |--- buf.gen.yaml
|   |   |--- buf.yaml
|   |   |--- README.md
|--- cmd
|   |--- main.go
|   |--- README.md
|--- docs
|   |--- README.md
|   |--- tree.md
|--- internal
|   |--- adapter
|   |   |--- driven
|   |   |   |--- db
|   |   |   |   |--- migration
|   |   |   |   |   |--- init.sql
|   |   |   |   |   |--- README.md
|   |   |   |   |--- repository
|   |   |   |   |   |--- README.md
|   |   |   |   |   |--- user.go
|   |   |   |   |   |--- user_mock.go
|   |   |   |   |--- db_handler.go
|   |   |   |   |--- postgres_transaction.go
|   |   |   |   |--- postgres_transaction_mock.go
|   |   |--- driver
|   |   |   |--- grpc
|   |   |   |   |--- README.md
|   |   |   |--- http
|   |   |   |   |--- README.md
|   |   |   |--- model
|   |   |   |   |--- README.md
|   |   |   |   |--- user.go
|   |   |   |--- service
|   |   |   |   |--- README.md
|   |   |   |   |--- user.go
|   |   |   |--- README.md
|   |--- domain
|   |   |--- README.md
|   |--- port
|   |   |--- driven
|   |   |   |--- db
|   |   |   |   |--- repository
|   |   |   |   |   |--- README.md
|   |   |   |   |   |--- user.go
|   |   |--- driver
|   |   |   |--- error
|   |   |   |   |--- user.go
|   |   |   |--- model
|   |   |   |   |--- README.md
|   |   |   |--- service
|   |   |   |   |--- README.md
|   |   |   |   |--- user.go
|--- pkg
|--- script
|   |--- create_tree.ps1
|   |--- fill_tree.ps1
|--- test
|   |--- README.md
|--- .env.example
|--- docker-compose.yml
|--- Dockerfile
|--- Makefile
|--- README.md
.
|--- api
|   |--- openapi
|   |   |--- README.md
|   |   |--- user.yaml
|   |--- proto
|   |   |--- user
|   |   |   |--- v1
|   |   |   |   |--- user_service.proto
|   |   |   |   |--- user_type.proto
|   |   |--- buf.gen.yaml
|   |   |--- buf.yaml
|   |   |--- README.md
|--- cmd
|   |--- main.go
|   |--- README.md
|--- docs
|   |--- README.md
|   |--- tree.md
|--- internal
|   |--- adapter
|   |   |--- driven
|   |   |   |--- db
|   |   |   |   |--- migration
|   |   |   |   |   |--- init.sql
|   |   |   |   |   |--- README.md
|   |   |   |   |--- repository
|   |   |   |   |   |--- README.md
|   |   |   |   |   |--- user.go
|   |   |   |   |   |--- user_mock.go
|   |   |   |   |--- db_handler.go
|   |   |   |   |--- postgres_transaction.go
|   |   |   |   |--- postgres_transaction_mock.go
|   |   |--- driver
|   |   |   |--- grpc
|   |   |   |   |--- README.md
|   |   |   |--- http
|   |   |   |   |--- README.md
|   |   |   |--- model
|   |   |   |   |--- README.md
|   |   |   |   |--- user.go
|   |   |   |--- service
|   |   |   |   |--- README.md
|   |   |   |   |--- user.go
|   |   |   |--- README.md
|   |--- domain
|   |   |--- README.md
|   |--- port
|   |   |--- driven
|   |   |   |--- db
|   |   |   |   |--- repository
|   |   |   |   |   |--- README.md
|   |   |   |   |   |--- user.go
|   |   |--- driver
|   |   |   |--- error
|   |   |   |   |--- user.go
|   |   |   |--- model
|   |   |   |   |--- README.md
|   |   |   |--- service
|   |   |   |   |--- README.md
|   |   |   |   |--- user.go
|--- pkg
|--- script
|   |--- create_tree.ps1
|   |--- fill_tree.ps1
|--- test
|   |--- README.md
|--- .env.example
|--- docker-compose.yml
|--- Dockerfile
|--- Makefile
|--- README.md
