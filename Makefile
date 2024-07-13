# Define a variable
APP_NAME := Application

.PHONY: dev-run install buf lint

export

install:

	@go mod tidy
	@go install github.com/bufbuild/buf/cmd/buf@latest
	@go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
	@go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest

buf:
	@env PATH="$$PATH:$$(go env GOPATH)/bin" buf generate --template api/proto/buf.gen.yaml api/proto
	@echo "✅ buf done!"

buf-win:
	@set PATH=%PATH%;%GOPATH%\bin
	@buf generate --template api\proto\buf.gen.yaml api/proto
	@echo "✅ buf done!""

run:
	go run ./cmd
	
lint:
	gofumpt -l -w .
	golangci-lint run  -v

test-run:
	go test ./...

docker-build: $(APP_NAME)
	docker build -t $(APP_NAME) .

docker-run: $(APP_NAME)
	docker run -p 8080:8080 $(APP_NAME)

docker-compose-up:
	docker-compose up --build 

docker-compose-down:
	docker-compose down --volumes

create-tree: 
	powershell.exe -NoProfile -ExecutionPolicy Bypass -File ./script/create_tree.ps1 -path "." >> .\docs\tree.md

fill-tree: 
	powershell.exe -NoProfile -ExecutionPolicy Bypass -File ./script/fill_tree.ps1 -path "../." 
