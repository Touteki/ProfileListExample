import UIKit

extension UIViewController {
    
    //Return InitialViewController from storyboard
    class func storyboardInstance<T: UIViewController>() -> T {
        let storyboardName = String(describing: self).replacingOccurrences(of: "ViewController", with: "")
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        return storyboard.instantiateInitialViewController() as! T
    }
    
}
