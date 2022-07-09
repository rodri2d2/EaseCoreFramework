import XCTest
@testable import EaseCoreFramework

final class EaseCoreFrameworkTests: XCTestCase {
    
    static var allTests = [
        ("testExample", testExample)
    ]
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(EaseCoreFramework().text, "Hello, World!")
    }
}
