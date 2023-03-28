import UIKit

final class OverviewViewController: UIViewController {
    
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
        title = "Overview"
    }
    
    private func setupTabBar() {
        navigationController?.tabBarItem.title = Tabs.overview.titleTabBar
    }
}

// MARK: - Setting Constraints

extension OverviewViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            
        ])
    }
}

