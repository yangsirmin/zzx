### 平台介绍

找找侠是基于若依框架开发的一款帮助人们更方便的寻找到丢失物的失物招领平台，包含网页端与移动端。

- 前端采用Vue、Element UI。

- 后端采用Spring Boot、Spring Security、Redis & Jwt。

- 权限认证使用Jwt，支持多终端认证系统。

- 支持加载动态权限菜单，多方式轻松权限控制。

- 高效率开发，使用代码生成器可以一键生成前后端代码。

### 功能介绍

#### 系统功能

1. 用户管理：用户是系统操作者，该功能主要完成系统用户配置。

2. 部门管理：配置系统组织机构（公司、部门、小组），树结构展现支持数据权限。

3. 岗位管理：配置系统用户所属担任职务。

4. 菜单管理：配置系统菜单，操作权限，按钮权限标识等。

5. 角色管理：角色菜单权限分配、设置角色按机构进行数据范围权限划分。

6. 字典管理：对系统中经常使用的一些较为固定的数据进行维护。

7. 参数管理：对系统动态配置常用参数。

8. 通知公告：系统通知公告信息发布维护。

9. 操作日志：系统正常操作日志记录和查询；系统异常信息日志记录和查询。

10. 登录日志：系统登录日志记录查询包含登录异常。

11. 在线用户：当前系统中活跃用户状态监控。

12. 定时任务：在线（添加、修改、删除)任务调度包含执行结果日志。

13. 代码生成：前后端代码的生成（java、html、xml、sql）支持CRUD下载 。

14. 系统接口：根据业务代码自动生成相关的api接口文档。

15. 服务监控：监视当前系统CPU、内存、磁盘、堆栈等相关信息。

16. 缓存监控：对系统的缓存信息查询，命令统计等。

17. 在线构建器：拖动表单元素生成相应的HTML代码。

18. 连接池监视：监视当前系统数据库连接池状态，可进行分析SQL找出系统性能瓶颈。

#### 业务功能

1.物品管理：对丢失，发现，已被认领物品的管理

2.物品种类：对物品的分类管理

3.领取地点：对可认领物品的地点进行管理

4.用户评论：用户可评论对平台使用感想

5.我的发布：管理用户自己的发布物品

### 在线演示

演示地址：www.ybczzx.fun

### 演示图片

#### 网页端

| <img src="zzximage/image.png" alt="image" style="width:100%;"> | <img src="zzximage/image1.png" alt="image" style="width:100%;"> | <img src="zzximage/image2.png" alt="image" style="width:100%;"> |
| --- | --- | --- |
| <img src="zzximage/image3.png" alt="image" style="width:100%;"> | <img src="zzximage/image4.png" alt="image" style="width:100%;"> | <img src="zzximage/image5.png" alt="image" style="width:100%;"> |

#### 移动端

| <img src="zzximage/Screenshot_20241125_160432_uni.fun.ybczzx.jpg" alt="Screenshot" style="width:100%;"> | <img src="zzximage/Screenshot_20241125_160447_uni.fun.ybczzx.jpg" alt="Screenshot" style="width:100%;"> | <img src="zzximage/Screenshot_20241125_160206_uni.fun.ybczzx.jpg" alt="Screenshot" style="width:100%;"> |
| --- | --- | --- |
| <img src="zzximage/Screenshot_20241125_160218_uni.fun.ybczzx.jpg" alt="Screenshot" style="width:100%;"> | <img src="zzximage/Screenshot_20241125_160213_uni.fun.ybczzx.jpg" alt="Screenshot" style="width:100%;"> | <img src="zzximage/Screenshot_20241125_160227_uni.fun.ybczzx.jpg" alt="Screenshot" style="width:100%;"> |
| <img src="zzximage/Screenshot_20241125_160234_uni.fun.ybczzx.jpg" alt="Screenshot" style="width:100%;"> | <img src="zzximage/Screenshot_20241125_161436_uni.fun.ybczzx.jpg" alt="Screenshot" style="width:100%;"> |  |

### 项目本地启动
#### 项目环境

- jdk 11

- MySQL 5.7

- Redis ≥ 3.0

- Maven 3.6

- Node 16

#### 启动准备

- 执行sql脚本

- 修改zzx-admin模块下的yml文件，如MySQL，Redis等，并启动ZhaoZhaoXiaApplication

- 启动前端项目

- 在MySQL中找到sys_user表，里面有用户信息，密码均为134679



