import XCTest
import Storyboardable

class Tests: XCTestCase {
    
    func testInitialViewController() {
        let test = Main.initial
        XCTAssertNotNil(test)
    }
    
    func testFirstInformation() {
        let test = Main.first
        XCTAssertEqual(test.name, "Main")
        XCTAssertEqual(test.identifier, "first")
    }
    
    func testSecondViewController() {
        let test = Main.second.get
        XCTAssertNotNil(test)
    }
}

enum Main : Storyboardable {
    case first
    case second
    case test
}
