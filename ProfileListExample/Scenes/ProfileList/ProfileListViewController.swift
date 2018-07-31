import UIKit


class ProfileListViewController: UIViewController {

    // MARK: - Variables
    var contentView: ProfileListView!
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.contentView = self.view as! ProfileListView
        self.contentView.delegate = self
        self.navigationItem.title = "Profiles"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let profiles = ProfileWorker.fetchProfiles()
        self.updateView(with: profiles)
    }
    
    // MARK: - Updates
    func updateView(with profiles: [Profile]) {
        var viewModel = ProfileListView.ViewModel()
        viewModel.profileList = profiles
        contentView.updateWith(viewModel)
    }

}


extension ProfileListViewController: ProfileListViewDelegate {
    
    func didSelectProfile(_ profile: Profile) {
        let titleString = "Selected profile: \(profile.nickname)"
        let messageString = "\n" + "Profile realname: \(profile.fullname)"
        let alertController = UIAlertController(title: titleString, message: messageString, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }
    
    func addProfileAction() {
        let titleString = "Warning!"
        let messageString = "\n" + "This function is not implemented yet"
        let alertController = UIAlertController(title: titleString, message: messageString, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }
}
