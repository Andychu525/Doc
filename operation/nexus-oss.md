## 0 依赖

| 依赖   | 版本 |
| ------ | ---- |
| Java   | 7+   |

## 1 安装

    #下载
    wget https://sonatype-download.global.ssl.fastly.net/repository/repositoryManager/oss/nexus-2.14.8-01-bundle.tar.gz

    #解压
    tar -xf nexus-2.12.1-01-bundle.tar.gz -C /opt/nexus

## 2 配置

    1 将 nexus加入到系统服务
    # cp bin/nexus /etc/init.d/nexus2
    # chkconfig --add nexus2
    # chkconfig nexus2 on

    2 修改 nexus脚本
    # vim /etc/init.d/nexus2
    NEXUS_HOME="/opt/nexus/"
    RUN_AS_USER=root

![xxx](http://img.blog.csdn.net/20171213164555445?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvb3V5YW5nX3Blbmc=/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/SouthEast)

    3 配置 Nexus2 启动时候的 jdk 版本
    # vim bin/jsw/conf/wrapper.conf
    wrapper.java.command=/usr/java/bin/java

![avatar](http://img.blog.csdn.net/20171213170104878?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvb3V5YW5nX3Blbmc=/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/SouthEast)

    4 配置 Nexus2 监听的端口以及仓库存储位置
    # vim conf/nexus.properties
    application-port=8083
    nexus-work=${bundleBasedir}/../sonatype-work/nexus

![avatar](http://img.blog.csdn.net/20171213180503728?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvb3V5YW5nX3Blbmc=/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/SouthEast)

## 3 启动 Nexus

    # service nexus start

![xxx](http://img.blog.csdn.net/20171213180924591?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvb3V5YW5nX3Blbmc=/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/SouthEast)

## 4 访问 Nexus

    url: http://ip:8083/nexus
    usr: admin
    pwd: admin123
