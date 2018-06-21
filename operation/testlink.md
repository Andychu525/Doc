## 1 搭建LAMP环境

### 1.1 文件下载 

xampp-linux-5.6.12-0-installer.run [下载地址](http://sourceforge.net/projects/xampp/files/)

testlink-1.9.14.tar.gz [下载地址](http://sourceforge.net/projects/testlink/files/TestLink%201.9/TestLink%201.9.14/testlink-1.9.14.tar.gz/download)


### 1.2 安装XAMPP     

    #chmod 755 xampp-linux-5.5.28-0-installer.run  
    #./xampp-linux-5.5.28-0-installer.run  


### 1.3 配置XAMPP

    #开启XAMPP服务设置密码
    sudo /opt/lampp/lampp start  
    
    #默认安装的是开发模式，此条命令可以进入设置mysql、Apache、php的用户名、密码

    XAMPP: Quick security check...  XAMPP: Your XAMPP pages are NOT secured by a password.  XAMPP: Do you want to set a password? [yes] yes  XAMPP: Password:  
    XAMPP: Password (again):   
    XAMPP: Password protection active. Please use 'lampp' as user name!  XAMPP: MySQL is accessable via network.  XAMPP: Normaly that's not recommended. Do you want me to turn it off? [yes] yes  XAMPP: Turned off. 
    XAMPP: Stopping MySQL... 
    XAMPP: Starting MySQL... 
    XAMPP: The MySQL
    phpMyAdmin user pma has no password set!!!  XAMPP: Do you want to set a password? [yes] yes 
    XAMPP: Password:  
    XAMPP: Password (again):  
    XAMPP: Setting new MySQL pma password. 
    XAMPP: Setting phpMyAdmin's pma password to the new one. 
    XAMPP: MySQL has no root passwort set!!! 
    XAMPP: Do you want to set a password? [yes] yes 
    XAMPP: Write the password somewhere down to make sure you won't forget it!!! 
    XAMPP: Password:   
    XAMPP: Password (again):  
    XAMPP: Setting new MySQL root password. 
    XAMPP: Change phpMyAdmin's authentication method. 
    XAMPP: The FTP password for user 'nobody' is still set to 'lampp'. 
    XAMPP: Do you want to change the password? [yes] yes 
    XAMPP: Password:  
    XAMPP: Password (again):  
    XAMPP: Reload ProFTPD... 
    XAMPP: Done.

### 1.4 配置php.ini文件
    
    vi /opt/lampp/etc/php.ini  
    #延长session时间
    session.gc_maxlifetime = 2880

    #修改参数
    maxexecutiontime = 120

    #将内存由8M改为64M
    memory_limit = 64M

## 2 安装Testlink

### 2.1 将下载的包解压到/lampp/htdocs/下，重命名为testlink

### 2.2 创建数据库并新建用户（可以使用shell命令，也可以直接访问phpmyadmin进行操作）

    #cd /opt/lampp/bin/  
    #./mysql -uroot -ppassword  
    >create database testlink;  
    >grant all privileges on testlink.* to tladmin@"localhost" identified by "password"  

### 2.3打开浏览器，访问http://localhost/testlink  进入安装页面

    安装过程中：
    database type：MYSQL
    database host：localhost
    database name ：testlink

    填写MYSQL数据库用户名和密码

    Database login: root
    Database password: password

    填写testlink数据库的登录帐号和密码

    testlink DB login: testlink
    testlink DB password: password

    完成。
## 3 问题及解决办法

    如果报错
    Checking if /var/testlink/logs/ directory exists [S] </B<< td>    Failed!
    Checking if /var/testlink/upload_area/ directory exists [S] </B<< td>  Failed!

    解决方案：
    修改/opt/lampp/htdocs/testlink/config.inc.php文件：

    //$tlCfg->logpath = '/var/testlink/logs/'; /* unix example  注释掉该句， 添加如下内容:
    $tlCfg->logpath = 'testlinkDir/logs/';
    //$grepositoryPath = '/var/testlink/uploadarea/';  /* unix example 注释掉该句，
    添加如下内容:
    $grepositoryPath = 'testlinkDir/uploadarea/';

    注意：testlinkDir 表示安装目录路径
