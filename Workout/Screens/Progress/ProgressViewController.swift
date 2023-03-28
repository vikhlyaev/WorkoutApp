import UIKit

final class ProgressViewController: UIViewController {
    
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
        title = "Workout Progress"
    }
    
    private func setupTabBar() {
        navigationController?.tabBarItem.title = Tabs.progress.titleTabBar
    }
}

// MARK: - Setting Constraints

extension ProgressViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            
        ])
    }
}

