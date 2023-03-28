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
        
        let exportBarButton = UIBarButtonItem(title: "Export",
                                             style: .plain,
                                             target: self,
                                             action: #selector(exportButtonTapped))
        
        let detailsBarButton = UIBarButtonItem(title: "Details",
                                             style: .plain,
                                             target: self,
                                             action: #selector(detailsButtonTapped))
        
        navigationItem.setLeftBarButton(exportBarButton, animated: true)
        navigationItem.setRightBarButton(detailsBarButton, animated: true)
    }
    
    private func setupTabBar() {
        navigationController?.tabBarItem.title = Tabs.progress.titleTabBar
    }
    
    @objc
    private func exportButtonTapped() {
        print(#function)
    }
    
    @objc
    private func detailsButtonTapped() {
        print(#function)
    }
}

// MARK: - Setting Constraints

extension ProgressViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            
        ])
    }
}

