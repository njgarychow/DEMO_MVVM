import UIKit

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        displayUserInfoPage()
    }
    
    func displayUserInfoPage() {
        let stroyboard = UIStoryboard(name: "UserInfo", bundle: nil)
        let viewController = stroyboard.instantiateInitialViewController() as! UserInfoViewController
        let model = UserInfoModel(name: "jqzhou", age: 18)
        let viewModel = UserInfoViewModel(userInfo: model)
        viewController.viewModel = viewModel
        self.present(viewController, animated: true, completion: nil)
    }

}

