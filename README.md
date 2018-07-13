# 中山大学软件工程实训 - 面向云机器人开发
 图书馆自动取书系统 服务端
---

## 一.简介
此服务端用于如下用途：

- 提供与用户交互的界面
- 存储图书馆的书本数据
- 接收用户取书请求，并存储在云端
- 提供查询接口，供ROS节点获取取书请求信息

此服务端配置说明
- 服务器基于Node.js的Express框架
- 数据库使用mysql
- 监听系统的3000端口
- 需要通过Nginx对http以及https请求进行反向代理至3000端口


## 二.页面与API说明



![页面图片](http://s)



接口：https://meal.mlg.kim/query/addquery
方法：POST
功能：接受来自查询界面的书名信息，检索数据库中是否有这本书，若有，则加入取书队列


接口：https://meal.mlg.kim/query/addquery
方法：GET
功能：返回取书队列顶部的书所在地点的坐标


## 三.部署步骤


- 安装nodejs
- 安装nginx并设置反向代理
- 安装pm2
- 安装mysql,配置登录用户名密码为root
- 安装express，在控制台键入：`$ npm install -g express`
- 将project文件夹下代码拷贝至服务器
- 进入project文件夹，输入`$ pm2 start ./bin/www`

此时服务器便可成功运作


