import SwiftUI

/// Content View Test
public struct MyLibraryTest: View {
    public var title: String = "Hello SwiftUI!"
    public var body: some View {
        VStack {
            Text(title)
                .padding()
                .foregroundColor(.white)
            Image(uiImage: SCImage(named: "test")!)
                .resizable()
                .frame(
                    width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,
                    height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,
                    alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/
                )
        }
        .frame(
            minWidth: .zero,
            maxWidth: .infinity,
            minHeight: .zero,
            maxHeight: .infinity)
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
fileprivate struct ContentView_Previews: PreviewProvider {
    struct ViewPreview: View {
        var body: some View {
            MyLibraryTest()
        }
    }

    static var previews: some View {
        ViewPreview()
    }
}
