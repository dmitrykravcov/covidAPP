//import Foundation
//protocol EventManager {
//    func subscribe(event: EventType, listner: Listener)
//    func notify(event: CFStreamEventType)
//}
//protocol Listener {
//    func  update()
//}
//enum EventType {
//    case logout
//}
//class ListEventManager: EventManager {
//    private var listeneres = [Listener]()
//    func  subscribe(listener: Listener) {
//    }
//    func unsbscribe(listener: Listener){
//    }
//    func notify() {
//        listeners.forEach {listener in listener.update()
//            
//        }
//    }
//}
//class ProfileViewController {
//    func logoutButtonDidpressed() {
//        ListEventManager.notify()
//    }
//}
//class Navigator: Listner {
//    func update(){
//        self.rootNavigation.popToRoot()
//    }
//}
