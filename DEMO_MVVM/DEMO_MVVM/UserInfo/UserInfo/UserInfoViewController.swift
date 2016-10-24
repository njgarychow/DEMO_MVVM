import UIKit

class UserInfoViewController: UIViewController {
    @IBOutlet weak var userInfoLabel: UILabel!
    @IBOutlet weak var retriveMoreButton: UIButton!
    
    var viewModel: UserInfoViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
        
        retriveMoreButton.addTarget(self, action: #selector(retriveMoreButtonClicked), for: .touchUpInside)
    }
    
    func updateViews() {
        userInfoLabel.text = viewModel.userInfoDescription
    }
    
    @objc func retriveMoreButtonClicked() {
        
    }
    
}
