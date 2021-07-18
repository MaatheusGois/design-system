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
            let testTitle = "Hello SwiftUI!"
            let title = MyLibraryTest(title: testTitle).title

            XCTAssertEqual(title, testTitle)
        }
    }
