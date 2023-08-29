docker run --rm -it -p 8090:5173 --mount type=bind,src=$(pwd),dst=/usr/app --workdir /usr/app --name 'container_patisson_client_development' node:20.5 bash
