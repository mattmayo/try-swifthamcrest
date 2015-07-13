import UIKit
import XCTest
import Hamcrest

class try_swifthamcrestTests: XCTestCase {
    
    func testXCTAssert() {
        let x = 1
        XCTAssertEqual(x, 2, "This is an example of a XCTAssertEqual.")
    }
    
    func testAssertThat() {
        let x = 1
        assertThat(x == 2)
    }
    
    func testXCTAssertWithOptional() {
        var optionalInt: Int?
        
        XCTAssertNotNil(optionalInt, "This is an example of a XCTAssertNotNil.")
        XCTAssert(optionalInt == 1, "This is an example of a XCTAssert")
    }
    
    func testPresentAnd() {
        var optionalInt: Int?
        
        assertThat(optionalInt, presentAnd(equalTo(1)))
    }
}