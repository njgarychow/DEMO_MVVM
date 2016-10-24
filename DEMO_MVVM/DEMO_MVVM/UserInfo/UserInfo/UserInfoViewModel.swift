class UserInfoViewModel {
    
    private let userInfo: UserInfoModel
    
    init(userInfo: UserInfoModel) {
        self.userInfo = userInfo
    }
    
    var userInfoDescription: String {
        return "name: \(userInfo.name)\nage: \(userInfo.age)"
    }
}
