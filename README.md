# Setting up a new machine 
Need to install 
- nvim
- tmux
- git
- openssh-server and openssh-client
- gcc and g++
- python env and virtualenv

For GPU systems
- cuda tookit
- nsys and ncu
- nvtop
- 

(optional)
- remmina
- keep the PC on even with lid off
- setting up copilot in nvim
- install (npm)[https://nodejs.org/en/download/package-manager]

## Accidental deletion of `~/.bashrc`
```
cp /etc/skel/.bashrc ~/.bashrc
```


## Configuring Nvim 
Use `install.sh` script provided.
```
./install.sh
```

## Configuring tmux
Use `install.sh` script provided.
```
./install.sh
```

## Configuring git
First generate a ssh key using the following command 
```
ssh-keygen -t ed25519 -C "shubhamr.roy62@gmail.com"
```
Add the public key to your git ssh key list

config you system with your username and email id
```
git config --global user.email "shubhamr.roy62@gmail.com"
git config --global user.name "sroy729"
```

## Installing Docker(include docker compose)
refer to the link (dockerhub)[https://docs.docker.com/engine/install/ubuntu/]

To make the docker run without sudo.
Add your user to docker group
```
sudo usermod -aG docker $USER
```
Logout and back in or do the following
```
newgrp docker
```

For docker compose file it should be named `docker-compose.yml`

## Installing pyenv and virtualenv

Install dependencies
```
sudo apt update
sudo apt install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev \
libffi-dev liblzma-dev git
```

Install pyenv
```
curl https://pyenv.run | bash
```

Setup shell config in your `.bashrc` or `.zshrc`

```
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
```

Install python version 
```
pyenv install 3.11.6
pyenv virtualenv 3.11.6 myenv
```

Activate/Deactivate environment
```
pyenv activate myenv
pyenv deactivate myenv
```
