# 環境建置
## 自行安裝

### Mininet
雖然mininet提供Ubuntu作業系統直接使用apt套件安裝，但根據mininet的安裝文件，這只有支援 Python2。因此需要直接clone mininet在github上的專案，使用裡面提供的腳本安裝。而這邊也會順便安裝ovs。
```
git clone "https://github.com/mininet/mininet.git"
cd mininet
util/install.sh -nv
```
Ubuntu 18 以上的版本，需要自行安裝 net-tools
```
apt-get install net-tools
```

### Ryu 控制器
Ryu 是基於 Python 開發的套件，我們可以直接使用 pip3 安裝。
```
pip3 install ryu
```

由於 Ryu 當中使用到了 eventlet 套件後來捨去的內容，因此需要降低版本。
```
pip3 install eventlet==0.30.2
```

### 其他工具
我們將使用cURL作為REST API中的客戶端工具。
```
apt-get install curl
```

## 使用 images
這邊是我過去包好的image，可以自行取用。但還是推薦在虛擬機中自行安裝，這樣在操作xterm上會比較方便。

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

