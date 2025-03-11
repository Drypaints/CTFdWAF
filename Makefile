all: install up

install:
	@head -c 64 /dev/urandom > CTFd/.ctfd_secret_key
up:
	@docker compose up
down:
	@docker compose down
clean:
	rm -f CTFd/.ctfd_secret_key
