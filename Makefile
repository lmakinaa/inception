USER=ijaija

up-attached:
	cd ./srcs && docker-compose up

up:
	cd ./srcs && docker-compose up -d

down:
	cd ./srcs && docker-compose down

clean:
	cd ./srcs && docker-compose down --rmi all
	rm -rf /home/$(USER)/data

re: clean up
