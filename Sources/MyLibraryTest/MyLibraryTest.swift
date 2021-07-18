import SwiftUI

/// Content View Test
public struct MyLibraryTest: View {

    // Properties

    public var title: String

    // Init

    public init(title: String) {
        // Register fonts
        FontManager.registerFonts()

        self.title = title
    }

    // Body

    public var body: some View {
        VStack {
            DSImage.coffe(.large).view
            titleView(title)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
    }
}

// Builders

fileprivate extension MyLibraryTest {
    func titleView(_ text: String) -> some View {
        Text(text)
            .foregroundColor(.white)
            .font(DSFont.montez(.title).font)
    }
}

// MARK: - Private Preview

/// If change `access modifier`, doesn't work the preview.
struct ContentView_Previews: PreviewProvider {
    struct ViewPreview: View {
        var body: some View {
            MyLibraryTest(title: "Hello SwiftUI!")
        }
    }

    static var previews: some View {
        ViewPreview()
    }
}
