docker container rm --force 'container_patisson_client_development'
docker image rm --force 'image_patisson_client_development'

nvm use
npm install
docker build --rm --file Dockerfile.development --tag 'image_patisson_client_development' .
docker run --rm  --name 'container_patisson_client_development' --detach -p 8090:5173 --mount type=bind,src=$(pwd),dst=/usr/app --workdir /usr/app 'image_patisson_client_development'
