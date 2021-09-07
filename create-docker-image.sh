echo "${DOCKER_PASSWORD}" | docker login -u "${DOCKER_USERNAME}" --password-stdin

docker build -t prometheus .
docker tag prometheus publiekeinnovatie/prometheus:latest
docker tag prometheus "publiekeinnovatie/prometheus:2.29.2-${BITBUCKET_BUILD_NUMBER}"
docker push publiekeinnovatie/prometheus
