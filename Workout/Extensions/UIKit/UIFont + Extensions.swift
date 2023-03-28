import UIKit

extension UIFont {
    static func robotoRegular(with size: CGFloat) -> UIFont {
        UIFont(name: "Roboto-Regular", size: size) ?? .systemFont(ofSize: size, weight: .regular)
    }
    
    static func robotoMedium(with size: CGFloat) -> UIFont {
        UIFont(name: "Roboto-Medium", size: size) ?? .systemFont(ofSize: size, weight: .medium)
    }
    
    static func robotoBold(with size: CGFloat) -> UIFont {
        UIFont(name: "Roboto-Bold", size: size) ?? .systemFont(ofSize: size, weight: .bold)
    }
}
