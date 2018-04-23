# Vapor 如何开始


## 创建初始项目

### [安装Vapor](https://docs.vapor.codes/2.0/getting-started/install-on-macos/)

0. 检查安装环境
```
eval "$(curl -sL check.vapor.sh)"
```

1. 安装HomeBrew
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

2. 拉取vapor/homebrew-tap到本地（homebrew有自己的默认库，homebrew-tap相当于第三方库），这样 brew 可以访问，Vapor 的 macOS 安装包
```
brew tap vapor/homebrew-tap
brew update
```

3. 安装Vapor
```
brew install vapor
```

4. 试一试
```
vapor --help
```

5. 可能发生的错误
	* Library not loaded: /usr/local/opt/openssl/lib/libssl.1.0.0.dylib：[Error after installing Vapor using custom location of `Homebrew` on macOS #1211](https://github.com/vapor/vapor/issues/1211)


### 准备初始工程

1. 新建工程
```
vapor new HelloVapor 
```

2. 生成Xcode工程
```
vapor xcode -y 
```

3. 清理代码

打开Xcode后查看Sources/App/main.swift 去掉除
```
import Vapor

let drop = Droplet()

drop.run()
```
之外的所有代码

### 构建与启动

构建
```
vapor build
```

构建发布版
```
vapor build --release
```

启动服务
```
vapor run serve
```

访问：
```
curl localhost:8080/plaintext
```

### [手动搭建](https://docs.vapor.codes/2.0/getting-started/manual/)

## api 接口

Routes.swift
```
func setupRoutes() throws {
        get("hello") { req in
            var json = JSON()
            try json.set("hello", "world")
            return json
        }

        get("plaintext") { req in
            return "Hello, world!"
        }

        // response to requests to /info domain
        // with a description of the request
        get("info") { req in
            return req.description
        }

        get("description") { req in return req.description }
        
        ///////////////////////////
        // Fake 接口 开始
        // http://localhost:8080/fake/v1/hello
        
        get("fake", "v1", "hello") { req in
            return try JSON (node: [
                "message": "Hello u!"
                ])
        }
        
        // Fake 接口 结束
        ///////////////////////////
        
        try resource("posts", PostController.self)
    }
```


##


