# svn 项目发布

        使用svn 的merge功能将测试分支的代码(https://192.168.32.88/svn/ljdy/java/Tag)合并至生产分支
    https://192.168.32.88/svn/ljdy/java/Trunk/version01
        a)手动发布：项目根目录下使用：ant -f ant/build.xml deploy 发布
        b)jenkins发布：手动点击jenkins正式环境页面下的项目进行发布

## 注意要点

    1、开发分支合并至测试分支，由对应开发人员进行合并、解决冲突，测试分支合并至生产分支应由专人进行合
       并，保证生产分支处于随时可打包上线状态。

    2、项目发布成功后，存在前端js文件的项目(例如scenicMap)需进行手动清除阿里云CDN缓存
	刷新流程：阿里云登录->CDN->刷新->目录>https://map.365daoyou.cn/web/
    
