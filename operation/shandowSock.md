# ���� shadowSocks

### 1.����Դ

    sudo apt-get update

### 2.Ȼ��װ python-pip

    sudo apt-get install python-pip

### 3.��װ SS

    sudo pip install shadowsocks

### 4.���� SS

    sudo vim /etc/shadowsocks.json

    {
        "server": "0.0.0.0",
        "server_ipv6": "::",
        "local_address": "127.0.0.1",
        "local_port": 1081,
        "port_password": {          #�˴���Ӷ�Ӧ�Ķ˿ں�����
            "30000":"lvjikeji",  
            "30001":"chukunkun",
            "30002":"wuweijie",
            "30003":"yuanzhen"
        },
        "timeout": 120,
        "udp_timeout": 60,
        "method": "chacha20",
        "protocol": "auth_sha1_v4_compatible",
        "protocol_param": "",
        "obfs": "tls1.2_ticket_auth_compatible",
        "obfs_param": "",
        "dns_ipv6": false,
        "connect_verbose_info": 1,
        "redirect": "",
        "fast_open": false,
        "workers": 1
    }

### 5.���� ss

    service  shadowsocks restart

# �˿�ӳ��

### 1.С��·����([192.168.32.1](http://192.168.32.1))����:a12345677

### 2.��ǰ�˿�ӳ������

![avatar](./img/С��·�����˿�ӳ��.jpg)