import UIKit

public struct MediumUIKitButtonFont: UIKitButtonsFontSize {
    let buttonFontSize: CGFloat = 30
}

extension UIKitButtonsFontSize where Self == MediumUIKitButtonFont {
    static var medium: UIKitButtonsFontSize {MediumUIKitButtonFont()}
}
