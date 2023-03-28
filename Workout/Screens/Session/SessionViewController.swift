import UIKit

final class SessionViewController: UIViewController {
    
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
        title = "High Intensity Cardio"
    }
    
    private func setupTabBar() {
        navigationController?.tabBarItem.title = Tabs.session.titleTabBar
    }
}

// MARK: - Setting Constraints

extension SessionViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            
        ])
    }
}

