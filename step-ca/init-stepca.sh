docker run -it -v /opt/step:/home/step \
    -p 9000:9000 \
    -e "DOCKER_STEPCA_INIT_NAME=MyAwesomeCA" \
    -e "DOCKER_STEPCA_INIT_DNS_NAMES=localhost,$(hostname -f)" \
    -e "DOCKER_STEPCA_INIT_REMOTE_MANAGEMENT=true" \
    -e "DOCKER_STEPCA_INIT_ACME=true"
    smallstep/step-ca