USER=ijaija

up:
	mkdir -p /home/$(USER)/data/wp
	mkdir -p /home/$(USER)/data/db
	docker compose up -f ./src/docker-compose.yml -d


up-attached:
	mkdir -p /home/$(USER)/data/wp
	mkdir -p /home/$(USER)/data/db
	docker compose up -f ./src/docker-compose.yml

down:
	docker compose down -f ./src/docker-compose.yml

clean:
	docker compose down -f ./src/docker-compose.yml --rmi 'all'
	rm -rf /home/$(USER)/data

re: clean up
