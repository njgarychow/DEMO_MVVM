import Foundation

class UserInfoViewModel {
    
    private let userInfo: UserInfoModel
    
    init(userInfo: UserInfoModel) {
        self.userInfo = userInfo
    }
    
    var userInfoDescription: String {
        return "name: \(userInfo.name)\nage: \(userInfo.age)"
    }
    
    func retriveMoreUserInfoDetails(completion: @escaping ((UserInfoDetailsViewModel) -> Void)) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(2)) {
            let model = UserInfoDetailsModel(name: "jqzhou", age: 18, phoneNumber: "1561234567890", address: "tianfu software park unit E")
            let viewModel = UserInfoDetailsViewModel(model: model)
            completion(viewModel)
        }
    }
}
