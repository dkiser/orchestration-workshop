for N in $(seq 1 5); do
  export DOCKER_HOST=tcp://node$N:55555
  docker ps -qa | xargs docker rm -f
done
unset DOCKER_HOST
