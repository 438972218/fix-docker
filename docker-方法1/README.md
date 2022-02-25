# 安装 docker，docker-compose

 - 将所有文件上传服务器
 - 切换服务器root权限
 - 修改 install.sh 权限，命令：chmod +x install.sh
 - 执行 ./install.sh 即可

修改/etc/docker/daemon.json文件
{
  "registry-mirrors": ["https://5urrjlsk.mirror.aliyuncs.com"],
  "log-driver": "json-file",
  "data-root": "/data/docker",
  "log-opts": {
    "max-size": "10m",
    "max-file":"3"
  }
}
并重启
systemctl daemon-reload
systemctl restart docker
