
## Build Image

```
git clone “ https://github.com/ting2313/sdn-tutorial.git”
cd ./sdn-tutorial
sudo docker build -t ryu .
sudo docker images 
```

## Using
```
sudo docker run -it --rm --privileged -e DISPLAY ryu bash
service openvswitch-switch start
```

