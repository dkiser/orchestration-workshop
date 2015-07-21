for N in $(seq 1 5); do
  export DOCKER_HOST=tcp://node$N:55555
  docker-compose up -d
done
unset DOCKER_HOST
