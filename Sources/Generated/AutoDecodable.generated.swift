// Generated using Sourcery 0.16.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// Auto-generated Decodable initializer

extension Event: Decodable {

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Int.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        listID = try container.decode(String.self, forKey: .listID)
        timestamp = try container.decode(String.self, forKey: .timestamp)
        fields = try container.decode([String: String].self, forKey: .fields)
        tags = try container.decode([String: String].self, forKey: .tags)
        data = try container.decodeIfPresent(Data.self, forKey: .data)
    }

}
