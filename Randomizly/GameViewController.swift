import UIKit

class GameViewController: UIViewController {
  
  @IBOutlet weak var inputField: UITextField!
  
  @IBAction func guess(_ sender: Any) {
    if let input = self.inputField.text, let number = Int(input) {
      print("Input: \(number)")
    } else {
      print("No input")
    }
  }
  
}
