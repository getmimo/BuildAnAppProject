import Foundation

class RandomizlyModel {
  private var number = 0
  private(set) var tries = 0
  
  init() {
    self.newNumber()
  }
  
  func newNumber() {
    self.number = Int(arc4random_uniform(6) + 1 )
  }
  
  func guess(_ guess: Int) -> Bool {
    self.tries += 1
    return self.number == guess
  }
}
