import XCTest
@testable import EaseCoreFramework

final class EaseCoreFrameworkTests: XCTestCase {
    
    static var allTests = [
        ("test_ColorRedEqual", test_ColorRedEqual),
        ("test_EaseColorsAreEqual", test_EaseColorsAreEqual),
        ("test_SecondaryColorTest", test_SecondaryColorTest)
    ]
    
    
    
    func test_ColorRedEqual() {
        let color = EaseCore.colorFromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }
    
    func test_EaseColorsAreEqual() {
        let color = EaseCore.colorFromHexString("006736")
        XCTAssertEqual(color, EaseCore.easeColor)
    }
    
    func test_SecondaryColorTest() {
        let color = EaseCore.colorFromHexString("00FF00")
        XCTAssertEqual(color, EaseCore.secondaryColor)
    }
    
}
