import UIKit

public struct BigUIKitButtonFont: UIKitButtonsFontSize {
    let buttonFontSize: CGFloat = 50
}

extension UIKitButtonsFontSize where Self == BigUIKitButtonFont {
    static var big: UIKitButtonsFontSize {BigUIKitButtonFont()}
}
