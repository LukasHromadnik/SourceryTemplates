// Generated using Sourcery 0.16.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// Auto-generated view interface

typealias CarViewModelFactory = (AvatarService, CarViewModel.Value) -> CarViewModel
protocol HasCarViewModelFactory {
    var carViewModelFactory: CarViewModelFactory { get }
}

extension AppDependency: HasCarViewModelFactory {
    var carViewModelFactory: CarViewModelFactory {
        return { avatarService, value in
            return CarViewModel(dependencies: self, avatarService: avatarService, value: value)
        }
    }
}

