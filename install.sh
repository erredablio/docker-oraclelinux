sudo systemctl stop docker && \
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
sudo groupadd docker -f && \
sudo usermod -aG docker $USER && \
sudo systemctl enable docker.service && \
sudo systemctl enable containerd.service && \
sudo systemctl start docker && \
awk -F= '$1=="PRETTY_NAME" { print "Docker Service installation finish in " $2 ;}' /etc/os-release
