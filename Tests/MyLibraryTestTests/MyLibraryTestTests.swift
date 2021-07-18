    import XCTest
    @testable import MyLibraryTest

    final class MyLibraryTestTests: XCTestCase {
        func testImageSource() {
            let image = SCImage(named: "test")
            let imageNil = SCImage(named: "")

            XCTAssertNotNil(image)
            XCTAssertNil(imageNil)
        }

        func testClass() {
            let title = MyLibraryTest().title

            XCTAssertEqual(title, "Hello SwiftUI!")
        }
    }
