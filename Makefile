initproject:
	-go mod init github.com/$(user_name)/$(project_name)
migrate-down:
	- migrate -database $(db_url) -path $(path) -verbose down
migrate-up:
	- migrate -database $(db_url) -path $(path) -verbose up
migrate-create:
	- migrate create -ext sql -dir internal/constant/query/schemas -tz "UTC" $(args)
swagger:
	- swag init -g initiator/initiator.go
tests:
	- go test ./...  -count=1
air:
	- go install github.com/cosmtrek/air@latest
sqlc:
	- sqlc generate -f ./config/sqlc.yaml
lint:
	- golangci-lint run ./...