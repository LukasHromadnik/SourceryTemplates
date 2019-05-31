enum AreaRestriction: String {
    case none
}

final class Area: Object, AutoDecodable {
    @objc dynamic var id = 0
    @objc dynamic var name = ""
    // sourcery:mappingKey = restriction
    @objc dynamic var _restriction = AreaRestriction.none.rawValue
    @objc dynamic var region: Region?
    // sourcery:mappingKey = description
    @objc dynamic var areaDescription: String?
    // sourcery:mappingKey = params
    let parameters = List<String>()
    // sourcery:mappingKey = rating
    @objc dynamic var _rating = 0.0
    @objc dynamic var ratingVotes = 0
    // sourcery:mappingKey = traffic
    @objc dynamic var _traffic = 0
    @objc dynamic var trafficVotes = 0
    let sectors = List<Sector>()

    // MARK: Realm API

    override static func primaryKey() -> String? {
        return "id"
    }

    override static func ignoredProperties() -> [String] {
        return ["restriction"]
    }
}