import Logging
import SwiftUI

struct ContentView: View {
    private static let logger = Logger(label: "dev.aakashdadhich.factory.FactoryTestMacOS")

    @State private var name = ""

    var body: some View {
        VStack(spacing: 12) {
            TextField("Name", text: $name)
                .textFieldStyle(.roundedBorder)
                .frame(maxWidth: 240)
            Text(Greeting.message(for: name))
                .font(.title2)
        }
        .padding(32)
        .frame(minWidth: 360, minHeight: 200)
        .onChange(of: name) { _, _ in
            Self.logger.debug("name changed")
        }
    }
}
