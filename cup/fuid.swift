import SwiftUI

struct ContentView: View {
    var body: some View {
        Circle()
            .fill(ShapeStyle.conicGradient(colors: [.red, .blue], center: .center, angle: Angle(degrees: 45)))
            .frame(width: 200, height: 200)
    }
}

