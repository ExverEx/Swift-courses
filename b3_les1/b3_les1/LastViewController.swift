import UIKit

class LastViewController: UIViewController {
    
    @IBOutlet weak var tokenView: UILabel!
    @IBOutlet weak var userIdView: UILabel!
    
        override func viewDidLoad() {
            super.viewDidLoad()
    
        let session = Session.instance
        tokenView.text = session.token
        userIdView.text = String(describing: session.userId)
    }
}
