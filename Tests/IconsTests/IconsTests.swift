    import XCTest
    @testable import Icons

    final class IconsTests: XCTestCase {
        func testIconsSource() {
            DSIcon.allCases.forEach { icon in
                _ = icon.image
            }
        }
    }
