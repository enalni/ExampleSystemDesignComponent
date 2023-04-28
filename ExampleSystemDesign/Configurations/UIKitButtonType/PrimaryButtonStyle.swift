import UIKit

// Setting the main button

struct PrimaryUIKitButtonType: UIKitButtonType {
    let defaultt: UIKitButtonsConfiguration = PrimaryButtonDefaultConfiguration()
    var disable: UIKitButtonsConfiguration = PrimaryButtonDisableConfiguration()
    var pressed: UIKitButtonsConfiguration = PrimaryButtonPressedConfiguration()
}

struct PrimaryButtonDefaultConfiguration: UIKitButtonsConfiguration {
    var boldFont: Bool = false
    var backgroundColor: UIColor = .systemBlue
    var titleColor: UIColor = .white
}

struct PrimaryButtonDisableConfiguration: UIKitButtonsConfiguration {
    var backgroundColor: UIColor = .systemBlue
    var titleColor: UIColor = .white
    var boldFont: Bool = false
}

struct PrimaryButtonPressedConfiguration: UIKitButtonsConfiguration {
    var backgroundColor: UIColor = .systemBlue
    var titleColor: UIColor = .white
    var boldFont: Bool = false
}

extension UIKitButtonType where Self == PrimaryUIKitButtonType {
    static var primary: UIKitButtonType {PrimaryUIKitButtonType()}
}
