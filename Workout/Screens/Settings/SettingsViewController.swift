import UIKit

final class SettingsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupNavBar()
        setupTabBar()
        setConstraints()
    }
    
    private func setupView() {
        view.backgroundColor = .customBackground
    }
    
    private func setupNavBar() {
        title = "Settings"
    }
    
    private func setupTabBar() {
        navigationController?.tabBarItem.title = Tabs.settings.titleTabBar
    }
}

// MARK: - Setting Constraints

extension SettingsViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            
        ])
    }
}

