# v2ray-config
v2ray config

1. vps安装v2ray服务端，路由器安装原版merlin
2. 下载对应的v2ray客户端，v2ray-linux-arm
3. 修改配置config.json，配置v2ray客户端信息
4. 修改iptable_add.sh
   把 iptables -t nat -A V2RAY -d xxx.xx.xx.xx -j RETURN 中的 xxx.xx.xx.xx 修改位v2ray服务器的ip
5. 复制S80v2ray到 /opt/etc/init.d
6. 启动v2ray，可以执行restart.sh
7. 执行iptable_add.sh
8. 访问http://www.ip111.cn/ 查看是否透明代理成功




------
1. 参考v2ray白话文教程 https://toutyrater.github.io/
2. 参考routing配置 https://toutyrater.github.io/basic/routing/cndirect.html
3. 参考项目 https://github.com/zw963/asuswrt-merlin-transparent-proxy
