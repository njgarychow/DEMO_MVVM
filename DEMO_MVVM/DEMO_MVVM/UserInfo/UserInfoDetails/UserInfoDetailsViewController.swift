import UIKit

class UserInfoDetailsViewController: UIViewController {
    
    @IBOutlet weak var userInfoDetailsLabel: UILabel!
    
    var viewModel: UserInfoDetailsViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
    
    func updateViews() {
        userInfoDetailsLabel.text = viewModel.userInfo
    }
    
}
