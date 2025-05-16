# MARS on Docker

## Tutorial

1. Instalar Docker

```bash
# Instalação do Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
rm get-docker.sh

# Configurar Docker para rodar sem sudo
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
```

2. Configurar o `.env`

```bash
echo "UID=$(id -u)" > .env
echo "GID=$(id -g)" >> .env
echo "USER=$(whoami)" >> .env
```

ou

```bash
make config
```

3. Executar o MARS

```bash
make run
```