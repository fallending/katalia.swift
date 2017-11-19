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
        
        get("fake", "v1", "hello") { req in
            return try JSON (node: [
                "message": "Hello u!"
                ])
        }
        
        // Fake 接口 结束
        ///////////////////////////
        
        try resource("posts", PostController.self)
    }
}
