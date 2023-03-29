import UIKit

final class NavBarController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
    }
    
    private func setupNavBar() {
        view.backgroundColor = .white
        
        let standard = UINavigationBarAppearance()
        standard.configureWithDefaultBackground()
        standard.backgroundColor = .white
        standard.titleTextAttributes = [
            .foregroundColor: UIColor.customTitleDarkGray,
            .font: UIFont.robotoMedium(with: 17)
        ]
          
        let button = UIBarButtonItemAppearance(style: .plain)
        button.normal.titleTextAttributes = [.foregroundColor: UIColor.customActive]
        button.disabled.titleTextAttributes = [.foregroundColor: UIColor.customInactive]
        standard.buttonAppearance = button
          
        UINavigationBar.appearance().standardAppearance = standard
        
        navigationBar.addBottomBorder(with: .customSeparator, height: 1)
    }
}
