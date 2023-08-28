docker container rm --force 'container_patisson_client_production'
docker image rm --force 'image_patisson_client_production'

docker build --file Dockerfile.production --tag 'image_patisson_client_production' .
docker run --name 'container_patisson_client_production' --detach -p 80:80 'image_patisson_client_production'
