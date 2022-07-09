import XCTest
@testable import EaseCoreFramework

final class EaseCoreColorTests: XCTestCase {
    
    static var allTests = [
        ("test_ColorRedEqual", test_ColorRedEqual),
        ("test_EaseColorsAreEqual", test_EaseColorsAreEqual),
        ("test_SecondaryColorTest", test_SecondaryColorTest)
    ]
    
    func test_ColorRedEqual() {
        let color = EaseCore.Color.fromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }
    
    func test_EaseColorsAreEqual() {
        let color = EaseCore.Color.fromHexString("006736")
        XCTAssertEqual(color, EaseCore.Color.easeColor)
    }
    
    func test_SecondaryColorTest() {
        let color = EaseCore.Color.fromHexString("00FF00")
        XCTAssertEqual(color, EaseCore.Color.secondaryColor)
    }
    
}
