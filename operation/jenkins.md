**系统：Ubuntu 14.04 LTS**
## 0 环境依赖

|   依赖   | 版本  |
| ------   |  --- | 
| Java     | 7+   | 
| tomcat   | 8    |

## 1 安装部署

### 1.1 获取jenkins war包

    wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war

### 1.2 部署
    
    #将war放入tomcat环境
    mv jenkins.war /opt/tomcat/webapps/

    #启动tomcat
    bash /opt/tomcat/bin/startup.sh

### 1.3 访问地址

    http://{ip}:{post}/jenkins