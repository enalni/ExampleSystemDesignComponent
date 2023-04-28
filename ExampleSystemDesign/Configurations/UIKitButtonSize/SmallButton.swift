import UIKit

public struct SmallUIkitButtonSize: UIKitButtonsSize {
    let buttonHeight: CGFloat = 40
}

extension UIKitButtonsSize where Self == SmallUIkitButtonSize {
    static var small: UIKitButtonsSize {SmallUIkitButtonSize()}
}
