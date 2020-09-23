clean:
	-docker-compose down
	-docker stop $(docker ps -aq)
	-docker rm $(docker ps -aq)
	-docker volume prune -f
	-docker system prune -f
	-sudo rm -r ./prometheus/prometheus-data/*
start:
	docker-compose up -d
pause:
	docker-compose pause
stop:
	docker-compose stop
restart:
	docker-compose restart