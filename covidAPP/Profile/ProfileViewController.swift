import UIKit
import UserNotifications
class ProfileViewController: UIViewController, UNUserNotificationCenterDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let center = UNUserNotificationCenter.current()


        center.requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in

            if (granted) {

                let action = UNNotificationAction(identifier: "action-id", title: "Details", options: .foreground)

                let category = UNNotificationCategory(
                    identifier: "catergory-go-details",
                    actions: [action],
                    intentIdentifiers: [],
                    options: []
                )

                center.setNotificationCategories([category])

            }

        }

        center.delegate = self
    }

    @IBAction func buttonDidPressed() {

        let content = UNMutableNotificationContent()
        content.categoryIdentifier = "catergory-go-details"
        content.title = "Let see covidAPP"
        content.body = "new news and cases"
        content.sound = .defaultCritical

        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)

        let request = UNNotificationRequest(
            identifier: "notification-id",
            content: content,
            trigger: trigger
        )

        UNUserNotificationCenter.current().add(request)

    }

    func userNotificationCenter(
        _ center: UNUserNotificationCenter,
        didReceive response: UNNotificationResponse,
        withCompletionHandler completionHandler: @escaping () -> Void
    ) {


        completionHandler()
    }


    }
    

    

