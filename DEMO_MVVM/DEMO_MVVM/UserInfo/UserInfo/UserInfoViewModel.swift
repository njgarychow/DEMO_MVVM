import Foundation

class UserInfoViewModel {
    
    private let userInfo: UserInfoModel
    
    init(userInfo: UserInfoModel) {
        self.userInfo = userInfo
    }
    
    var userInfoDescription: String {
        return "name: \(userInfo.name)\nage: \(userInfo.age)"
    }
    
    func retriveMoreUserInfoDetails(completion: @escaping (() -> Void)) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(2)) { 
            completion()
        }
    }
}
