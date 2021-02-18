import UIKit

protocol ViewModel {
    var LoginButtonTitle: String { get }
    var passwordFieldTitle: String { get }
    var loginButtonEnabled: ((Bool) -> Void)? { get set }
        
}

//class ViewModelImpl: ViewModel {
//    let LoginButtonTitle: String = "Login"
//    
//}
//
