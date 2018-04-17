import Foundation

enum GuessAnswer {
  case correct
  case tooLow
  case tooHigh
}

class RandomizlyModel {
  private var number = 0
  private(set) var tries = 0
  
  init() {
    self.newNumber()
  }
  
  func newNumber() {
    self.number = Int(arc4random_uniform(6) + 1 )
  }
  
  func guess(_ guess: Int) -> GuessAnswer {
    self.tries += 1
    if number == guess {
      return .correct
    } else if number > guess {
      return .tooLow
    } else {
      return .tooHigh
    }
  }
}
