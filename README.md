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

## Configuring Nvim 

## Configuring tmux

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
