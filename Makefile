USER=ijaija

up:
	mkdir -p /home/$(USER)/data/wp
	mkdir -p /home/$(USER)/data/db
	docker compose up -d


up-attached:
	mkdir -p /home/$(USER)/data/wp
	mkdir -p /home/$(USER)/data/db
	docker compose up

down:
	docker compose down

clean:
	docker compose down --rmi 'all'
	rm -rf /home/$(USER)/data

re: clean up
