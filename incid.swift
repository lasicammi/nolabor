import SwiftUI

struct ScrollableViewWithSideBar: View {
    var body: some View {
        HStack {
            // Sidebar
            VStack {
                Text("Sidebar")
                    .font(.headline)
                    .padding()

                // Add more sidebar items here
                Spacer()
            }
            .frame(width: 200) // Set the desired width for the sidebar
            .background(Color.gray.opacity(0.2)) // Background color for the sidebar
            
            // Scrollable content
            ScrollView {
                VStack {
                    ForEach(0..<50) { index in
                        Text("Item \(index)")
                            .padding()
                            .background(Color.blue.opacity(0.1))
                            .cornerRadius(5)
                            .padding([.horizontal, .top])
                    }
                }
            }
        }
        .padding() // Optional padding around the entire HStack
    }
}

struct ScrollableViewWithSideBar_Previews: PreviewProvider {
    static var previews: some View {
        ScrollableViewWithSideBar()
    }
}
