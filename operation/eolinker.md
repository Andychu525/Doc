# 部署指南
环境要求
*	PHP 5.5+ / PHP7+（推荐）
*	Mysql 5.5+ / Mariadb 5.5+
*	Nginx（推荐） / Apache
*	项目目录需要具有完全的读写权限（777），用于写入配置文件。安装完成之后可以设置另外设置目录权限
*	PHP需要安装并启用mbstring以及curl模块，用于字符串处理以及接口测试功能
________________________________________
注意事项
* 3.x版本与2.x版本并不兼容，因此无法直接由2.x升级到3.x，也无法通过覆盖代码的方式进行升级，切勿随意尝试以防数据丢失。
* 如果需要进行数据的迁移，可以使用eoLinker接口管理系统中的【导出项目】功能：将项目导出为eoLinker专用格式（.export），然后在3.x版本中导入。
* 为了防止数据丢失，请在执行任何关键操作之前妥善备份数据库。
________________________________________
获取地址
*	Github：https://github.com/eolinker
*	码云：https://gitee.com/eoLinker-API-Management
*	Coding：https://coding.net/u/eolinker/project
________________________________________
社区支持
*	中文官网：https://www.eolinker.com
*	开源支持：https://www.eolinker.com/#/os/download
*	Blog：http://blog.eolinker.com
*	视频教程：http://blog.eolinker.com/#/course/
________________________________________
安装
从Github等途径获取开源版代码之后，目录结构如下：
 
其中：
*	backend_resource：后端源码
*	frontend_resource：前端源码（未压缩，使用Angular进行编写）
*	release：安装包，可用于直接安装
打开release文件夹，找到最新版本的压缩包，解压到合适的PHP环境下，并且通过浏览器访问项目根目录。如果正常则会转到如下引导页面：
 
 
 
 
根据指引页面提示，输入相应信息并且通过环境监测后，即可安装成功。随后页面会跳转至 用户注册页面。
开源版的使用操作与线上免费版基本同步，如有任何使用的问题请参考 线上版操作指南。

