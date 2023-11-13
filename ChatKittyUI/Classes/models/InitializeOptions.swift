struct InitializeOptions: Codable {
    let username: String
    let theme: Theme?
    var environment: String? = nil
    var Authentication: Authentication? = nil
}
