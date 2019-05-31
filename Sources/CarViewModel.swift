import Foundation

protocol AvatarService { }

protocol HasAvatarService { }

class CarViewModel: AutoFactory {
    typealias Value = String
    typealias Dependencies = HasAvatarService

    init(dependencies: Dependencies, avatarService: AvatarService, value: Value) {

    }
}
