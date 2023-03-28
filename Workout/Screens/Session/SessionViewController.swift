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
        
        let pauseBarButton = UIBarButtonItem(title: "Pause",
                                             style: .plain,
                                             target: self,
                                             action: #selector(pauseButtonTapped))
        
        let finishBarButton = UIBarButtonItem(title: "Finish",
                                             style: .plain,
                                             target: self,
                                             action: #selector(finishButtonTapped))
        
        navigationItem.setLeftBarButton(pauseBarButton, animated: true)
        navigationItem.setRightBarButton(finishBarButton, animated: true)
    }
    
    private func setupTabBar() {
        navigationController?.tabBarItem.title = Tabs.session.titleTabBar
    }
    
    @objc
    private func pauseButtonTapped() {
        print(#function)
    }
    
    @objc
    private func finishButtonTapped() {
        print(#function)
    }
}

// MARK: - Setting Constraints

extension SessionViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            
        ])
    }
}

