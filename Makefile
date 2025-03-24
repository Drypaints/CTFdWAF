all: install up

install:
	@echo "Cloning CTFd..."
	@./clone.sh
	@echo "Setting random CFTd password..."
	@head -c 64 /dev/urandom > CTFd/.ctfd_secret_key
	@echo "Done!"
up:
	@echo "Starting containers..."
	@docker compose up -d
down:
	@echo "Stopping containers..."
	@docker compose down
reup: down up
logs:
	@docker compose logs
clean:
	@echo "Cleaning up..."
	@./unclone.sh
	@rm -rf CTFd
