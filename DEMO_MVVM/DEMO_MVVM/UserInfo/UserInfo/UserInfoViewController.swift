import UIKit

class UserInfoViewController: UIViewController {
    @IBOutlet weak var userInfoLabel: UILabel!
    @IBOutlet weak var retriveMoreButton: UIButton!
    
    @IBOutlet weak var loadingStatusLabel: UILabel!
    
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
        loadingStatusLabel.text = "Starting loading"
        weak var weakSelf = self
        viewModel.retriveMoreUserInfoDetails() { userInfoDetailsViewModel in
            if let strongSelf = weakSelf {
                strongSelf.loadingStatusLabel.text = ""
                strongSelf.displayUserInfoDetailsPage(viewModel: userInfoDetailsViewModel)
            }
        }
    }
    
    func displayUserInfoDetailsPage(viewModel: UserInfoDetailsViewModel) {
        self.performSegue(withIdentifier: "DisplayUserInfoDetailsSegue", sender: viewModel)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case .some("DisplayUserInfoDetailsSegue"):
            let destination = segue.destination as! UserInfoDetailsViewController
            let viewModel = sender as! UserInfoDetailsViewModel
            destination.viewModel = viewModel
        default:
            break
        }
    }
    
}
