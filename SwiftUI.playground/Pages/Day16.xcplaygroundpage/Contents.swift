import PlaygroundSupport
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                }
                Section {
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                }
                Section {
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                }
                Group {
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                }
            }
            .navigationBarTitle("SwiftUI", displayMode: .inline)
        }
    }
}

struct ButtonView: View {
    @State var tapCount = 0
    
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            self.tapCount += 1
        }
    }
}

struct TextFormView: View {
    @State private var name = ""
    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            Text("Your name is \(name)")
        }
    }
}

PlaygroundPage.current.setLiveView(TextFormView())
