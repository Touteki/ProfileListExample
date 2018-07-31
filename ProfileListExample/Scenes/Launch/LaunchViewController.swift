import UIKit

class LaunchViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.showRootScene()
    }
    
    private func showRootScene() {
        let startViewController = ProfileListViewController.storyboardInstance()
        let rootViewController = UINavigationController.init(rootViewController: startViewController)
        let appDelegate: AppDelegate = (UIApplication.shared.delegate as? AppDelegate)!
        appDelegate.window?.rootViewController = rootViewController
    }

}
