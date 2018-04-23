import Vapor

extension Droplet {
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

        get("gw-open", "alibaba.alisports.passport.oauth.getpackageconfig", "1.0") { req in
            return try JSON (node: [
                "message": "Hello alibaba.alisports.passport.oauth.getpackageconfig!"
                ])
        }

        post("gwp-open", "alibaba.alisports.passport.oauth.getpackageconfig", "1.0") { req in
            return try JSON (node: [
                "message": "Hello alibaba.alisports.passport.oauth.getpackageconfig!"
                ])
        }
        
        get("fake", "v1", "get") { req in
            return try JSON (node: [
                "message": "Hello GET!"
                ])
        }
        
        post("fake", "v1", "post") { req in
            return try JSON (node: [
                "message": "Hello POST!"
                ])
        }
        
        post("fake", "v1", "upload") { req in
            return try JSON (node: [
                "message": "Hello UPLOAD!"
                ])
        }
        
        post("fake", "v1", "download") { req in
            return try JSON (node: [
                "message": "Hello DOWNLOAD!"
                ])
        }
        
        // Fake 接口 结束
        ///////////////////////////
        
        try resource("posts", PostController.self)
    }
}
