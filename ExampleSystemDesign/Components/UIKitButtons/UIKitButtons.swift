import UIKit

// Config button

protocol UIKitButtonType {
    var defaultt: UIKitButtonsConfiguration {get}
    var disable: UIKitButtonsConfiguration {get}
    var pressed: UIKitButtonsConfiguration {get}
}

protocol UIKitButtonsConfiguration {
    var backgroundColor: UIColor {get}
    var titleColor: UIColor {get}
    var boldFont: Bool {get}
}

enum UIKitButtonsState {
    case defaultt
    case disable
    case pressed
}

protocol UIKitButtonsSize {
    var buttonHeight: CGFloat {get}
}

protocol UIKitButtonsFontSize {
    var buttonFontSize: CGFloat {get}
}

protocol UIKitButtonsCornerRadius {
    var buttonCornerRadius: CGFloat {get}
}

final class UIKitButton: UIView {
    private var title: String
    private var image: UIImage
    private var type: UIKitButtonType
    private var heightButton: UIKitButtonsSize
    private var cornerRadius: UIKitButtonsCornerRadius
    private var fontSize: UIKitButtonsFontSize
    private var state: UIKitButtonsState
    private var action: () -> Void
    
    private let button = UIButton(frame: .zero)
    
    init(
        title: String,
        image: UIImage,
        type: UIKitButtonType,
        size: UIKitButtonsSize,
        cornerRadius: UIKitButtonsCornerRadius,
        fontSize: UIKitButtonsFontSize,
        state: UIKitButtonsState,
        action: @escaping () -> Void)
    {
        self.title = title
        self.image = image
        self.type = type
        self.heightButton = size
        self.cornerRadius = cornerRadius
        self.fontSize = fontSize
        self.state = state
        self.action = action
        
        super.init(frame: .zero)
        
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private var stateConfig: UIKitButtonsConfiguration{
        switch state {
        case .defaultt: return type.defaultt
        case .disable: return type.disable
        case .pressed: return type.pressed
        }
    }
}

private extension UIKitButton {
    func initialize() {
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.backgroundColor = stateConfig.backgroundColor
        button.setTitle(title, for: .normal)
        button.setTitleColor(stateConfig.titleColor, for: .normal)
        button.setImage(image, for: .normal)
        button.layer.cornerRadius = cornerRadius.buttonCornerRadius
        
        if stateConfig.boldFont {
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: fontSize.buttonFontSize)
        } else {
            button.titleLabel?.font = UIFont.systemFont(ofSize: fontSize.buttonFontSize)
        }
        
        addSubview(button)
    
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: centerXAnchor),
            button.centerYAnchor.constraint(equalTo: centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: heightButton.buttonHeight)
        ])
    }
}
