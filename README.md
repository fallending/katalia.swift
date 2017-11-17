# katalia.swift

a web server written on swift

### SPM 文档

https://swift.org/package-manager/

### Vapor, Perfect 文档

[PerfectlySoft/Perfect](https://github.com/PerfectlySoft/Perfect), [vapor/vapor](https://github.com/vapor/vapor), [vapor doc](https://docs.vapor.codes/2.0/getting-started/hello-world/)

1. [PerfectlySoft/PerfectDocs](https://github.com/PerfectlySoft/PerfectDocs), Reference and documentation for Perfect (Server-side Swift). Perfect (支持服务器端Swift语言的软件函数库）使用文档和参考手册. https://www.perfect.org
2. [Jinxiansen/Awesome-Server-Side-Swift](https://github.com/Jinxiansen/Awesome-Server-Side-Swift), Swift 服务端开发 Perfect、Vapor资料。


### How the project starts ?

*reference of [vapor/Documents/TUTORIALS](https://github.com/vapor/vapor/blob/master/Documents/TUTORIALS.md)*

	0. New project directory
	```
	mkdir HelloWorld
	cd HelloWorld
	```

	1. initialization of the project
	```
	swift package init --type executable
	```

	2. Add Vapor as a dependency
	```
	import PackageDescription
 
	let package = Package(
	    name: "HelloWorld",
	    dependencies: [
	        .Package(
	            url: "https://github.com/vapor/vapor.git",
	            majorVersion: 0,
	            minor: 18
	        )
	    ]
	)
	```

	3. Generate your xCode project(But we don't need the xCode IDE to run our project :)! )
	```
	swift package generate-xcodeproj
	```

	4. Compile it
	```
	swift build
	```

	5. Run it
	```
	./.build/debug/App
	```

	6. Visit localhost:8080

### How the project work with Docker ?

 	* [https://github.com/mafsoftware-research/vapor](https://github.com/mafsoftware-research/vapor)
 	* [https://finestructure.co/blog/2016/6/29/deploying-a-vapor-app-on-digital-ocean](https://finestructure.co/blog/2016/6/29/deploying-a-vapor-app-on-digital-ocean)
 	* [http://www.cocoachina.com/ios/20161031/17891.html](http://www.cocoachina.com/ios/20161031/17891.html)