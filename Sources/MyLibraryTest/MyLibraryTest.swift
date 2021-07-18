import SwiftUI

/// Content View Test
public struct MyLibraryTest: View {

    // Properties

    public var title: String

    // Init

    public init(title: String) {
        self.title = title
    }

    // Body

    public var body: some View {
        VStack {
            Image(uiImage: SCImage(named: "test")!)
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            Text(title)
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
    }
}

/// Get image from xcassets
/// - Parameter name: image name
/// - Returns: image source
public func SCImage(named name: String) -> UIImage? {
    UIImage(named: name, in: Bundle.module, compatibleWith: nil)
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
