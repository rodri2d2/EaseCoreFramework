import XCTest
@testable import EaseCoreFramework

final class EaseCoreFrameworkTests: XCTestCase {
    
    static var allTests = [
        ("testColorRedEqual", test_ColorRedEqual)
    ]
    
    func test_ColorRedEqual() {
        let color = EaseCore.colorFromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }
}
