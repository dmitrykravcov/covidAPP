
import XCTest
@testable import covidAPP

class covidAPPTests: XCTestCase {
    
    var validator: FieldValidator!
    
    override func setUpWithError() throws {
        validator = FieldValidator()
    }

    override func tearDownWithError() throws {
       validator = nil
    }

    func testExample() throws {
       print("testExample")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
