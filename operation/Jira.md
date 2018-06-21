## 1 下载
Jira[官网下载](https://www.atlassian.com/software/jira/download) 

    wget http://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-6.3.6.tar.gz

Mysql驱动
    
    mysql-connector-java-5.1.25-bin.jar 

汉化破解包

    atlassian-extras-2.2.2.jar 
    atlassian-universal-plugin-manager-plugin-2.17.13.jar 
    JIRA-6.3.3-language-pack-zh_CN.jar

## 2 安装
### 2.1 安装jdk环境
    Linux下安装jdk环境，参考：http://blog.csdn.net/mchdba/article/details/38768513
 

### 2.2 解压缩安装
    
    #解压
    tar -xvf atlassian-jira-6.3.6.tar.gz 
    mv atlassian-jira-6.3.6-standalone /opt/
    cd /opt/atlassian-jira-6.3.6-standalone
    
    #配置端口
    jira内置tomcat,默认使用端口8080,配置文件为server.xml

    #配置jira_home
    vim /opt/atlassian-jira-6.3.6-standalone/atlassian-jira/WEB-INF/classes/jira-application.properties
    jira.home = /home/jira_home
    
    #jbdc驱动包
    mv mysql-connector-java-5.1.25-bin.jar /opt/atlassian-jira-6.3.6-standalone/atlassian-jira/WEB-INF/lib/
    
    #启动jira
    bash /opt/atlassian-jira-6.3.6-standalone/bin/start-jira.sh

    #查看实时运行日志
    tail -f /opt/atlassian-jira-6.3.6-standalone/logs/*



## 3 JIRA运行配置
### 3.1 数据库配置

    #创建数据库及账户
    mysql>CREATE DATABASE `jira` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
    mysql> GRANT ALL ON jira.* TO jira_user@'%' IDENTIFIED BY 'jira_password';

在界面配置好数据库连接信息，然后点击“下一”按钮，如下图所示：

![avatar](http://blog.itpub.net/attachment/201409/21/26230597_141123412555Za.png)

配置完数据库之后，在新界面录入程序标题，点击“向后”按钮

![avatar](http://blog.itpub.net/attachment/201409/21/26230597_1411234274OQnZ.png)

![avatar](http://blog.itpub.net/attachment/201409/21/26230597_1411234302TATt.png)

### 3.2 临时授权

    #输入临时授权码，进行注册：
    AAABBw0ODAoPeNptkFtLxDAQhd/zKwI+R9Kwy66FPKxthGhvtF0p4kuso0a6sUwvuP/edissyj4MD
    HPOfHOYqzu0tICWeoJy4a+FzzkNwpIK7q1ICF2Ntu3tl5P3Ot89+1SNphnMPCEBwqkJTQ9y9jN+w
    zxBPi2a68jW4DpQr/a0rZJS5VmuC0XOBNnjAH/s5bGFxBxABmkcqzzQu2jRTd3bEZaFZvE+AnYzR
    JDYWNeDM64G9d1aPJ4TeXxOlOK7cbZbjrbNgkyGwwtg+rbvJpBkHikAR0Adytt0XzFV7R5Y+qQzV
    kWZIoVK5FQsWq03YrvdkN/Ekz3S4SXlcpRswPrDdPD/aT+P1nzDMC0CFQCM9+0LlHVNnZQnSTwuR
    O3eK+2gVgIUCteTs4Q3khIgrnsY64hxYB/d8bM=X02dh

![avatar](http://blog.itpub.net/attachment/201409/21/26230597_1411234332K2mH.png)

### 3.3 配置邮件服务器



## 4 汉化与破解

#### 4.1 汉化

    安装完成之后，用管理员账号登录，在右上角的齿轮状菜单中选择add-ons,然后在打开的页面左侧选择Manage Add-ons，选择Upload Plugins 连接，浏览上传中文语言包JIRA-6.3.3-language-pack-zh_CN.jar

#### 4.2 破解

    #停止jira
    bash /opt/atlassian-jira-6.3.6-standalone/bin/stop-jira.sh
    #替换jar包
    mv atlassian-extras-2.2.2.jar /opt/atlassian-jira-6.3.6-standalone/atlassian-jira/WEB-INF/lib/
    mv atlassian-universal-plugin-manager-plugin-2.17.13.jar  /opt/atlassian-jira-6.3.6-standalone/atlassian-jira/WEB-INF/atlassian-bundled-plugins/
    
    #重新启动jira
    bash /opt/atlassian-jira-6.3.6-standalone/bin/start-jira.sh

    #管理员登陆jira更新授权信息
     
    Description=JIRA: Commercial,
    CreationDate=2014-09-20,
    jira.LicenseEdition=ENTERPRISE,
    Evaluation=false,
    jira.LicenseTypeName=COMMERCIAL,
    jira.active=true,
    licenseVersion=2,
    MaintenanceExpiryDate=2099-12-31,
    Organisation=pl,
    SEN=SEN-L4572887,
    ServerID=BPT3-4QRK-FCRR-HEP3,
    jira.NumberOfUsers=-1,
    LicenseID=AAABBw0ODAoPeNptkFtLxDAQhd/zKwI+R9Kwy66FPKxthGhvtF0p4kuso0a6sUwvuP/edissyj4MD
    HPOfHOYqzu0tICWeoJy4a+FzzkNwpIK7q1ICF2Ntu3tl5P3Ot89+1SNphnMPCEBwqkJTQ9y9jN+w
    zxBPi2a68jW4DpQr/a0rZJS5VmuC0XOBNnjAH/s5bGFxBxABmkcqzzQu2jRTd3bEZaFZvE+AnYzR
    JDYWNeDM64G9d1aPJ4TeXxOlOK7cbZbjrbNgkyGwwtg+rbvJpBkHikAR0Adytt0XzFV7R5Y+qQzV
    kWZIoVK5FQsWq03YrvdkN/Ekz3S4SXlcpRswPrDdPD/aT+P1nzDMC0CFQCM9+0LlHVNnZQnSTwuR
    O3eK+2gVgIUCteTs4Q3khIgrnsY64hxYB/d8bM=X02dh,
    LicenseExpiryDate=2099-12-31,
    PurchaseDate=2014-09-20
 
 


       
