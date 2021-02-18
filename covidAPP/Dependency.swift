import Foundation
import Swinject
import KeychainAccess

class Dependency {
    var container = Container()
    init() {
        container.register(FieldValidator.self) { _ in CheckLoginPassword() }
        container.register(Keychain.self, factory: { _ in Keychain() })
    }
}
