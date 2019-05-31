class UIView { }

class MyView: UIView {

    private weak var titleLabel: UILabel!
    private weak var textLabel: UILabel!
    private weak var myButton: UIButton!
    // sourcery:isEnabled
    private weak var button: UIButton!

}

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