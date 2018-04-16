import UIKit

class GameViewController: UIViewController {
  
  @IBOutlet weak var inputField: UITextField!
  
  @IBAction func guess(_ sender: Any) {
    if let input = self.inputField.text, let number = Int(input) {
      print("Input: \(number)")
    } else {
      print("no input")
      self.showAlert()
    }
  }
  
  func showAlert() {
    let alertController = UIAlertController(title: "Error", message: "Please enter a number!", preferredStyle: .actionSheet)
    let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
    alertController.addAction(defaultAction)
    present(alertController, animated: true, completion: nil)
  }
  
}
