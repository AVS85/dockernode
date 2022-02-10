run: 
	docker run -d -p 3000:3000 -v imgdock_volume2:/app/data --rm --name imgdock_container imgdock:volumes

# в качестве названия volume указываем путь к локальной папке которая и будет volume'ом
run-dev: 
	docker run -d -p 3000:3000 -v "P:/docker/node_modules:/app" -v /app/node_modules -v imgdock_volume2:/app/data --rm --name imgdock_container imgdock:volumes
stop:
	docker stop imgdock_container