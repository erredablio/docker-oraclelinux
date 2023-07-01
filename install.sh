sudo yum remove docker \
                docker-client \
                docker-client-latest \
                docker-common \
                docker-latest \
                docker-latest-logrotate \
                docker-logrotate \
                docker-engine && \
sudo yum install yum-utils -y && \
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo && \
sudo yum install docker-ce \
                 docker-ce-cli \
                 containerd.io \
                 docker-buildx-plugin \
                 docker-compose-plugin -y && \
sudo systemctl start docker && \
sudo groupadd docker && \
sudo usermod -aG docker $USER && \
sudo systemctl enable docker.service && \
sudo systemctl enable containerd.service && \
docker --version
