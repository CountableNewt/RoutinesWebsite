import Vapor

func routes(_ app: Application) throws {
    app.get { req async throws in
        try await req.view.render("index", ["title": "Get Routines"])
    }

   app.get("about") { req async throws in
       try await req.view.render("about", ["title": "About Routines"])
   }
}
