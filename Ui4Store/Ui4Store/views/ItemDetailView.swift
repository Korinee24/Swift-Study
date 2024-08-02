import SwiftUI

struct ItemDetailView: View {
    @State var quantityRemaining = Int.random(in: 1...10)
    let itemName: String
    
    var body: some View {
        VStack {
            Text("\(itemName)")
                .font(.title)
                .padding()
            Spacer()
            Image(systemName: "photo")
                .font(.system(size: 200))
                .padding()
            Text("Quantity Remaining: \(quantityRemaining)")
            Spacer()
            Button {
                //decreasing quantity of item
                if quantityRemaining > 0 {
                    quantityRemaining -= 1
                }
            } label: {
                Text("Add one to your cart")
            }
            Spacer()
        }
           .background(
             NavigationLink(destination: Text("You bought all the \(itemName)!"),
                            isActive: .constant(quantityRemaining == 0),
                            label: { EmptyView() }
          )
    
        )
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView(itemName: "Text Items")
    }
}
