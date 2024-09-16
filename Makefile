USER=ijaija

up:
	mkdir -p /home/$(USER)/data/wp
	mkdir -p /home/$(USER)/data/db
	docker compose up -d

down:
	docker compose down

clean:
	docker compose down
	rm -rf /home/$(USER)/data

re: clean up
