import UIKit

public struct PrimaryCornerRadius: UIKitButtonsCornerRadius {
    var buttonCornerRadius: CGFloat = 15
}

extension UIKitButtonsCornerRadius where Self == PrimaryCornerRadius {
    static var primary: UIKitButtonsCornerRadius {PrimaryCornerRadius()}
}
