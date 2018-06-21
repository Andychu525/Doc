## 1 安装部署
### 1.1 工具集安装
	系统环境：Ubuntu 14.04 LTS
	sudo apt-get install curl openssh-server ca-certificates postfix
	
### 1.2 获取Gitlab安装包文件
	wget --content-disposition https://packages.gitlab.com/gitlab/gitlab-ce/packages/ubuntu/trusty/gitlab-ce_10.5.6-ce.0_amd64.deb/download.deb
	Gitlab(ce版)官方安装包：https://packages.gitlab.com/gitlab/gitlab-ce

### 1.3 部署安装包
	sudo EXTERNAL_URL="http://gitlab.example.com" dpkg -i gitlab-ce_10.5.6-ce.0_amd64.deb
	部署并自动配置后，直接打开 EXTERNAL_URL 访问gitlab

### 1.4 中文语言包安装
	# 克隆汉化版本库
	git clone https://gitlab.com/xhang/gitlab.git
	# 如果已经克隆过，则进行更新
	git fetch

	#获取当前版本
	gitlab_version=$(sudo cat /opt/gitlab/embedded/service/gitlab-rails/VERSION)
	#导出当前版本的汉化补丁
	git diff v${gitlab_version} v${gitlab_version}-zh > ../${gitlab_version}-zh.diff

	# 导入汉化补丁
	sudo gitlab-ctl stop
	sudo patch -d /opt/gitlab/embedded/service/gitlab-rails -p1 < ../${gitlab_version}-zh.diff

	#确定没有 .rej 文件，重启 GitLab 即可
	sudo gitlab-ctl restart
	sudo gitlab-ctl reconfigure
	
## 2 问题及解决方法

### 2.1 502问题

	服务器上还开启了一个tomcat服务，占用了8080端口,使GitLab的unicorn服务不能开启。 
	vi /etc/gitlab/gitlab.rb 可进行相关配置修改，如端口、访问链接等

### 2.2 语言包问题

	英文版本使用正常，汉化后网页显示500，一般属于语言包中出现语法错误，卸载gitlab，使用稳定版本进行重新安装

### 2.3 查看实时日志

	#查看gitlab实时运行日志
	gitlab-ctl tail
	#日志路径
	/var/log/gitlab  



## 3 卸载

	#停止并卸载gitlab,卸载后会在 /home/{username}/ 下进行备份
	sudo gitlab-ctl uninstall		

	#删除所有包含gitlab的文件及目录
	find / -name gitlab|xargs rm -rf     

## 4 配置邮件
修改配置文件/etc/gitlab/gitlab.rb

    gitlab_rails['gitlab_email_enabled'] = true
	gitlab_rails['gitlab_email_from'] = 'xxx@qq.com'
	gitlab_rails['gitlab_email_display_name'] = 'xxx'
	gitlab_rails['gitlab_email_reply_to'] = 'xxx@qq.com'
	gitlab_rails['gitlab_email_subject_suffix'] = ''
	
	
	
	gitlab_rails['smtp_enable'] = true
	gitlab_rails['smtp_address'] = "smtp.qq.com"
	gitlab_rails['smtp_port'] = 465
	gitlab_rails['smtp_user_name'] = "xxx@qq.com"
	gitlab_rails['smtp_password'] = "xxx"
	gitlab_rails['smtp_domain'] = "smtp.qq.com"
	gitlab_rails['smtp_authentication'] = "login"
	gitlab_rails['smtp_enable_starttls_auto'] = true
	gitlab_rails['smtp_tls'] = true