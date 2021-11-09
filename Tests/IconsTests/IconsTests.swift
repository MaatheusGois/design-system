    import XCTest
    @testable import Images

    final class IconsTests: XCTestCase {
        func testIconsSource() {
            DSIcon.allCases.forEach { icon in
                _ = icon.value
            }
        }
    }
