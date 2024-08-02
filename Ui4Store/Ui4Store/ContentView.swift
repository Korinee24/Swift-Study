import SwiftUI

struct ContentView: View {
    var body: some View {
        //Navigation View
        NavigationView {
            VStack {
                Text("Items In Stock")
                    .font(.title)
                    .padding()
                Spacer()
                NavigationLink (
                    destination: ItemDetailView(itemName: "Shrimp Chips"), 
                    label: {
                        Text("Shrimp Chips")
                    }
                )
                Spacer()
            }
            //sets a navigation title
            .navigationTitle(Text("Ligaya's Store"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
