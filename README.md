# katalia.swift

a web server written on swift

###


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