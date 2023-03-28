import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    private func setupTabBar() {
        tabBar.tintColor = .customActive
        tabBar.barTintColor = .customInactive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = UIColor.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.robotoMedium(with: 10)], for: .normal)

        
        let dataSource: [Tabs] = [.overview, .session, .progress, .settings]
        
        viewControllers = dataSource.map{
            switch $0 {
            case .overview:
                let viewController = OverviewViewController()
                return embedInNavigationController(viewController: viewController)
            case .session:
                let viewController = SessionViewController()
                return embedInNavigationController(viewController: viewController)
            case .progress:
                let viewController = ProgressViewController()
                return embedInNavigationController(viewController: viewController)
            case .settings:
                let viewController = SettingsViewController()
                return embedInNavigationController(viewController: viewController)
            }
        }
        
        viewControllers?.enumerated().forEach {
            $1.tabBarItem.title = dataSource[$0].title
            $1.tabBarItem.image = UIImage(named: dataSource[$0].iconName)
            $1.tabBarItem.tag = $0
        }
    }
    
    private func embedInNavigationController(viewController: UIViewController) -> NavBarController {
        NavBarController(rootViewController: viewController)
    }
}

enum Tabs: Int, CaseIterable {
    case overview
    case session
    case progress
    case settings
    
    var title: String {
        switch self {
        case .overview:
            return "Overview"
        case .session:
            return "Session"
        case .progress:
            return "Progress"
        case .settings:
            return "Settings"
        }
    }
    
    var iconName: String {
        switch self {
        case .overview:
            return "overview_tab"
        case .session:
            return "session_tab"
        case .progress:
            return "progress_tab"
        case .settings:
            return "settings_tab"
        }
    }
}
