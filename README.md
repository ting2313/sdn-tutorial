# 環境建置
## 自行安裝

* 安裝 mininet
雖然mininet提供Ubuntu作業系統直接使用apt套件安裝，但根據mininet的安裝文件，這只有支援Python2。因此需要直接clone mininet在github上的專案，使用裡面提供的腳本安裝。
```

```

* 安裝 Ryu 控制器

## 使用images

* 建置image
```
git clone “ https://github.com/ting2313/sdn-tutorial.git”
cd ./sdn-tutorial
sudo docker build -t ryu .
sudo docker images 
```

* 執行方式
```
sudo docker run -it --rm --privileged -e DISPLAY ryu bash
service openvswitch-switch start
```

