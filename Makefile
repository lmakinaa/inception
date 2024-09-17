USER=ijaija

up:
	mkdir -p /home/$(USER)/data/wp
	mkdir -p /home/$(USER)/data/db
	cd ./src
	docker compose up -d


up-attached:
	mkdir -p /home/$(USER)/data/wp
	mkdir -p /home/$(USER)/data/db
	cd ./src
	docker compose up

down:
	cd ./src
	docker compose down

clean:
	cd ./src
	docker compose down --rmi 'all'
	rm -rf /home/$(USER)/data

re: clean up
