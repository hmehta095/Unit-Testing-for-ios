import XCTest


@testable import BullsEye

class BullsEyeTests: XCTestCase {
  
  // 2. Create the global variable for BullsEyeGame
  //       -JAVA: BullEyesGame game;
  var game: BullsEyeGame!
  
  override func setUp() {
    super.setUp()
    // 3. Initialize the global variable
    // -  JAVA: game = new BullEyeGame();
    game = BullsEyeGame();
  }
  
  
  
  
  
  
  override func tearDown() {
    // 4. close the game
    game = nil
    super.tearDown()
  }
  
  func testStartNewGame() {
    // 1. Start a new game
    game.startNewGame()
    // 2. Check that starting round number = 1
    XCTAssertEqual(1, game.round)
    // 3. Check that total starting points = 0
    XCTAssertEqual(0, game.scoreTotal)
  }
  

  func testStartNewRound() {
    // 1. Start a new game
    game.startNewGame()
    let initialRoundNumber = 1
    let InitialPoints = 0
    let initialTargetValue = game.targetValue
    
    XCTAssertEqual(initialRoundNumber, game.round)
    XCTAssertEqual(InitialPoints, game.scoreRound)

    // 2. Start a new round
    game.startNewRound()
    // 3. Check the current round number
    XCTAssertEqual(initialRoundNumber+1, game.round)

    
    // 4. Check the points for the round
    XCTAssertEqual(0, game.scoreRound)
    // 5. Check that you have a random number as the target
    XCTAssertNotEqual(initialTargetValue, game.targetValue)
    
  }
  
  
  
}
