import UIKit

class UserInfoViewController: UIViewController {
    @IBOutlet weak var userInfoLabel: UILabel!
    @IBOutlet weak var retriveMoreButton: UIButton!
    
    var viewModel: UserInfoViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
    
    func updateViews() {
        userInfoLabel.text = viewModel.userInfoDescription
    }
    
}
