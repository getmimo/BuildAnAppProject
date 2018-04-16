import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var randomNumberLabel: UILabel!
  
  var number = 10
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.newRandomNumber(self)
    
  }
  
  @IBAction func newRandomNumber(_ sender: Any) {
    self.number = Int(arc4random_uniform(6)+1)
    self.randomNumberLabel.text = "\(self.number)"
    self.view.backgroundColor = UIColor.red
  }
}
