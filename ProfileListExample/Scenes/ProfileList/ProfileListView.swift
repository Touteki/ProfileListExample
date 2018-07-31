import UIKit

protocol ProfileListViewDelegate: class {
    func didSelectProfile(_ profile: Profile)
    func addProfileAction()
}

class ProfileListView: UIView {
    
    struct ViewModel {
        var profileList = [Profile]()
    }
    
    weak var delegate: ProfileListViewDelegate?
    private var tableData = [Profile]()
    @IBOutlet private weak var tableView: UITableView!
    @IBOutlet private weak var addButton: UIButton!
    
    // MARK: - Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        self.configureTableView()
        self.configureAddButton()
    }
    
    // MARK: - Configurations
    private func configureTableView() {
        //tableView.register(ProfileCell.self, forCellReuseIdentifier: "profileCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .clear
    }
    
    private func configureAddButton() {
        self.addButton.clipsToBounds = true
        self.addButton.layer.borderColor = UIColor.white.cgColor
        self.addButton.layer.borderWidth = 1
        self.addButton.layer.cornerRadius = self.addButton.frame.size.width/2.0;
    }
    
    // MARK: - Updates
    func updateWith(_ viewModel: ViewModel) {
        self.tableData = viewModel.profileList
    }
    
    // MARK: Button Actions
    @IBAction func addProfileAction(_ sender: Any) {
        self.delegate?.addProfileAction()
    }
    
}


extension ProfileListView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "profileCell") as! ProfileCell
        let profile = tableData[indexPath.row]
        var viewModel = ProfileCell.ViewModel()
        viewModel.nickname = profile.nickname
        viewModel.fullname = profile.fullname
        cell.updateWith(viewModel)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedProfile = self.tableData[indexPath.row]
        delegate?.didSelectProfile(selectedProfile)
    }
    
}
