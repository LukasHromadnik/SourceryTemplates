struct Event: AutoDecodable {
    let id: Int
    let name: String
    // sourcery:apiKey = listid
    let listID: String
    let _timestamp: String
    let fields: [String: String]
    let tags: [String: String]
    let data: Data?

    // sourcery:skipMapping
    var transformedSections: [NewContactSection] = []
    // sourcery:skipMapping
    var transformedTags: [Tag] = []
}
