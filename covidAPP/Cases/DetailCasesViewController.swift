import UIKit

class DetailCasesViewController: UIViewController {
    
    @IBOutlet weak var infectedLabel: UILabel!
    @IBOutlet weak var recoveredLabel: UILabel!
    @IBOutlet weak var deceasedLabel: UILabel!
    @IBOutlet weak var titleCountry: UINavigationItem!
    
    var cases: Case?
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        
        if let recoveredInt = cases?.recovered {
            recoveredLabel.text = "\(NSLocalizedString("Recovered", comment: "")): \(recoveredInt)"
        } else {
        recoveredLabel.text = "\(NSLocalizedString("Recovered", comment: "")): -"
        }
        
        infectedLabel.text = "\(NSLocalizedString("Infected", comment: "")): \(String(describing: cases!.infected))"
        deceasedLabel.text = "\(NSLocalizedString("Deceased", comment: "")):  \(String(describing: cases!.deceased))"
        titleCountry.title = cases!.country
    }
}
