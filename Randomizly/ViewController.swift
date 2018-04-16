import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var randomNumberLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let number = 10
    self.randomNumberLabel.text = "\(number)"
  }
}
