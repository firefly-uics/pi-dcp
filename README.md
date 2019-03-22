# pi-dcp

## 项目结构说明
```
pi-dcp
├── lib 数据库驱动
├── sql 数据库脚本
└── src 源码
```

### Server 端     
#### 源码结构

```
src
├── java 源码文件
└── resources 配置数据
```
        
#### 包结构
```
com.dongweirj
├── cache 缓存
├── controller API
├── dao 数据库访问
├── dataprovider 数据源 抽象封装 定义数据结构及解析方法
├── dto 实体对象
├── elasticsearch 搜索数据提供实现
├── exception 异常
├── filedp 文件类 数据源 实现
├── jdbc 数据库 数据源 实现
├── kylin Apache Kylin™是一个开源的分布式分析引擎 数据源 实现
├── saiku OLAP分析引擎 数据源 实现
├── security 安全包
├── services 业务服务
├── solr 企业级搜索应用服务 数据源实现
└── util 工具包
```
    
#### Web 端 webapp 下，采用但页面应用开发模式
```
webapp
├── css/lib/plugins 外部资源 css js img
├── org/cboard 使用angularjs开发
│   ├── controller 控制器 页面 逻辑
│   ├── directive 扩展组件
│   ├── filter 过滤器
│   ├── service 后台api封装
│   ├── util 工具
│   ├── view 页面视图
├── starter.html 主页面
└── login.html 登录页面
```