import UIKit

// Setting the сancel button

struct CancelUIKitButtonType: UIKitButtonType {
    let defaultt: UIKitButtonsConfiguration = CancelButtonDefaultConfiguration()
    var disable: UIKitButtonsConfiguration = CancelButtonDisableConfiguration()
    var pressed: UIKitButtonsConfiguration = CancelButtonPressedConfiguration()
}

struct CancelButtonDefaultConfiguration: UIKitButtonsConfiguration {
    var boldFont: Bool = true
    var backgroundColor: UIColor = .systemRed
    var titleColor: UIColor = .white
}

struct CancelButtonDisableConfiguration: UIKitButtonsConfiguration {
    var backgroundColor: UIColor = .systemRed
    var boldFont: Bool = true
    var titleColor: UIColor = .white
}

struct CancelButtonPressedConfiguration: UIKitButtonsConfiguration {
    var backgroundColor: UIColor = .systemRed
    var titleColor: UIColor = .white
    var boldFont: Bool = true
}

extension UIKitButtonType where Self == CancelUIKitButtonType {
    static var cancel: UIKitButtonType {CancelUIKitButtonType()}
}
