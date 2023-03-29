import UIKit

final class OverviewViewController: UIViewController {
    
    private lazy var allWorkoutButton = NavBarButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupNavBar()
        setupTabBar()
        setConstraints()
    }
    
    private func setupView() {
        view.backgroundColor = .customBackground
        view.addSubview(allWorkoutButton)
        
        allWorkoutButton.configure(title: "All Workouts")
        allWorkoutButton.addTarget(self, action: #selector(allWorkoutButtonTapped), for: .touchUpInside)
    }
    
    private func setupNavBar() {
        title = "Overview"
    }
    
    private func setupTabBar() {
        navigationController?.tabBarItem.title = Tabs.overview.titleTabBar
    }
    
    @objc
    private func allWorkoutButtonTapped() {
        print(#function)
    }
}

// MARK: - Setting Constraints

extension OverviewViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            allWorkoutButton.widthAnchor.constraint(equalToConstant: 130),
            allWorkoutButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkoutButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            allWorkoutButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}

