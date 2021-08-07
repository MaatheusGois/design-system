    import XCTest
    @testable import Images

    final class ImagesTests: XCTestCase {
        func testImageSource() {
            let image = ImageManager(named: DSImage.coffe().name)
            let imageNil = ImageManager(named: "")

            XCTAssertNotNil(image)
            XCTAssertNil(imageNil)
        }
    }
