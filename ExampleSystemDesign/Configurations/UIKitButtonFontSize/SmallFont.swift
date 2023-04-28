import UIKit

public struct SmallUIKitButtonFont: UIKitButtonsFontSize {
    let buttonFontSize: CGFloat = 15
}

extension UIKitButtonsFontSize where Self == SmallUIKitButtonFont {
    static var small: UIKitButtonsFontSize {SmallUIKitButtonFont()}
}
