# xssh

一、打开页面：https://github.com/MetaVPS/xssh 直接登录，创建一个分支，库名称保持xssh；

二、打开页面：https://dashboard.ngrok.com/login 直接使用GitHub账号登录，然后在入门中找到授权令牌如图：
二、打开页面：https://dashboard.ngrok.com/login 直接使用GitHub账号登录，然后在入门中找到授权令牌如图：

授权令牌.PNG

三、在你自己仓库中修改config.sh,内容为 NGROK_TOKEN="这里粘贴你的令牌"，然后返回仓库，拷贝仓库地址，格式例如：https://github.com/你的名字/xssh

四、打开页面：https://cloud.okteto.com/#/login 同样用GitHub登录，然后在左上角点击：新建开发环境——git方法——url获取，填写上一个步骤中你的xssh URL，分支填写 main，然后启动。稍等1-3分钟，直到网络部署显示运行！
网络部署.PNG

五、我们回到ngrok，在端点或者隧道代理中可以看到，类似 tcp://2.tcp.ngrok.io:12795 这样的一个地址。

这样就可以了，接下来我们进行ssh连接，你的用户名和密码和我保持一致，地址和端口要看你自己的后台哦：

地址：2.tcp.ngrok.io
端口：12795
用户名：root
密码：majalaya
