// Generated using Sourcery 0.16.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// Auto-generated view interface

extension MyView {
    var title: String? {
        get { return titleLabel.text }
        set { titleLabel.text = newValue }
    }
    var text: String? {
        get { return textLabel.text }
        set { textLabel.text = newValue }
    }
    var myButtonTitle: String? {
        get { return myButton.title(for: .normal) }
        set { myButton.setTitle(newValue, for: .normal) }
    }

    var buttonTitle: String? {
        get { return button.title(for: .normal) }
        set { button.setTitle(newValue, for: .normal) }
    }

    var isButtonEnabled: Bool {
        get { return button.isEnabled }
        set { button.isEnabled = newValue }
    }
}
