class UserInfoDetailsViewModel {
    private let model: UserInfoDetailsModel
    
    init(model: UserInfoDetailsModel) {
        self.model = model
    }
    
    var userInfo: String {
        return "name: \(model.name)\nage: \(model.age)\nphone number: \(model.phoneNumber)\naddress: \(model.address)"
    }
}
