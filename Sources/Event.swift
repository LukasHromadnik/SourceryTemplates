struct Event: AutoDecodable {
    let id: Int
    let name: String
    let listID: String
    let timestamp: String
    let fields: [String: String]
    let tags: [String: String]
    let data: Data?

    // sourcery:skipMapping
    var transformedSections: [NewContactSection] = []
    // sourcery:skipMapping
    var transformedTags: [Tag] = []
}
