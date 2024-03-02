struct InitializeOptions: Codable {
    let username: String
    let theme: Theme?
    var environment: String? = nil
    var authentication: Authentication? = nil
    var apiConnectionType: String? = "standalone"
}
