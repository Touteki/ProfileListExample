import UIKit

class ProfileCell: UITableViewCell {

    struct ViewModel {
        var nickname: String?
        var fullname: String?
    }
    
    // MARK: - Outlets
    @IBOutlet private weak var nicknameLabel: UILabel!
    @IBOutlet private weak var fullnameLabel: UILabel!
    
    // MARK: - Updates
    func updateWith(_ viewModel: ViewModel) {
        self.nicknameLabel.text = viewModel.nickname
        self.fullnameLabel.text = viewModel.fullname
    }

}
