up:
	sudo docker-compose up -d
pull:
	sudo docker-compose pull	
consume:
	sudo docker-compose exec kafka  kafka-console-consumer.sh  --bootstrap-server :9092 --group console-consumer --property print.timestamp=true --property print.key=true --topic spider_data 
passwd:
	sudo docker-compose exec es bin/elasticsearch-setup-passwords auto -v
down:
	sudo docker-compose down
ps:
	sudo docker-compose ps
logs:
	sudo docker-compose logs -f