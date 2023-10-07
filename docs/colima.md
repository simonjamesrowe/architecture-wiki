# Installing colima (docker on mac)

```sh
 brew install colima
 brew install docker
 sudo ln -sf $HOME/.colima/default/docker.sock /var/run/docker.sock
 
 colima start --cpu 8 --memory 16 --disk 200
```