USER=ijaija

up:
	mkdir -p /home/$(USER)/data/wp
	mkdir -p /home/$(USER)/data/db
	cd ./srcs
	docker compose up -d


up-attached:
	mkdir -p /home/$(USER)/data/wp
	mkdir -p /home/$(USER)/data/db
	cd ./srcs
	docker compose up

down:
	cd ./srcs
	docker compose down

clean:
	cd ./srcs
	docker compose down --rmi 'all'
	rm -rf /home/$(USER)/data

re: clean up
