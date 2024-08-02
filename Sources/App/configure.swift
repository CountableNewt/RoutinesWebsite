import Leaf
import Vapor

// configures your application
public func configure(_ app: Application) async throws {
    // uncomment to serve files from /Public folder
    let file = FileMiddleware(publicDirectory: app.directory.publicDirectory)
    app.middleware.use(file)

    app.views.use(.leaf)


    // register routes
    try routes(app)
}
