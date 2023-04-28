import UIKit

public struct MediumUIkitButtonSize: UIKitButtonsSize {
    let buttonHeight: CGFloat = 67
}

extension UIKitButtonsSize where Self == MediumUIkitButtonSize {
    static var medium: UIKitButtonsSize {MediumUIkitButtonSize()}
}
