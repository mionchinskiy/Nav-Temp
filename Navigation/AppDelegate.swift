
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    let profileImage = UIImage(systemName: "person.circle")
    let feedImage = UIImage(systemName: "list.bullet.circle")
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        func createFeedViewController() -> UINavigationController {
            let feedVC = FeedViewController()
            feedVC.title = "Feed"
            feedVC.tabBarItem = UITabBarItem(title: "Feed", image: feedImage, tag: 0)
            return UINavigationController(rootViewController: feedVC)
        }
        
        func createProfileViewController() -> UINavigationController {
            let profileVC = ProfileViewController()
            profileVC.title = "Profile"
            profileVC.tabBarItem = UITabBarItem(title: "Profile", image: profileImage, tag: 1)
            return UINavigationController(rootViewController: profileVC)
        }
        
        func createTabBarController() -> UITabBarController {
            let tabBarController = UITabBarController()
            UITabBar.appearance().backgroundColor = .systemGray6
            tabBarController.viewControllers = [createFeedViewController(), createProfileViewController()]
            return tabBarController
        }
        
        self.window?.rootViewController = createTabBarController()
        self.window?.makeKeyAndVisible()
        
        return true
    }
}
