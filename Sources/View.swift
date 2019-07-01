class UIView { }

class MyView: UIView, AutoInterface {

    private weak var titleLabel: UILabel!
    private weak var textLabel: UILabel!
    private weak var myButton: UIButton!
    // sourcery:isEnabled
    private weak var button: UIButton!

}

// sourcery:inline:MyView.AutoInterface
extension MyView {
    var title: String? {
        get { return titleLabel.text }
        set { titleLabel.text = newValue }
    }
    var text: String? {
        get { return textLabel.text }
        set { textLabel.text = newValue }
    }
}
// sourcery:end

class Button: UIButton {

    var onTap: (() -> Void)?

    // MARK: - Initialization

    init(frame: CGRect) {
        super.init(frame: frame)

        setup()
    }

    // MARK: - Components setup

    private func setup() {
        addTarget(self, selector: #selector(tapped(_:), for: .touchUpInside)
    }

    // MARK: - Actions

    @objc
    private func tapped(_ sender: UIButton) {
        onTap?()
    }

}