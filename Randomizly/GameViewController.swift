import UIKit

class GameViewController: UIViewController {
  
  @IBOutlet weak var inputField: UITextField!
  
  let model = RandomizlyModel()
  
  @IBAction func guess(_ sender: Any) {
    if let input = self.inputField.text, let number = Int(input) {
      let correct = self.model.guess(number)
      let tries = self.model.tries
      if correct == true {
        self.showAlert(title: "Victory", message: "You guessed the number correctly! Tries needed: \(tries)")
      }
      print("Correct: \(correct), tries: \(tries)")
    } else {
      print("no input")
      self.showAlert(title: "Error", message: "Enter a number!")
    }
  }
  
  func showAlert(title: String, message: String) {
    let alertController = UIAlertController(title: title, message:message, preferredStyle: .alert)
    let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
    alertController.addAction(defaultAction)
    present(alertController, animated: true, completion: nil)
  }
  
}
