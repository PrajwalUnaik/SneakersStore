import SwiftUI

struct CartItem: Identifiable {
    let id = UUID()
    let name: String
    let price: Double
}

struct CartView: View {
    @State private var cartItems: [CartItem] = []

    var body: some View {
        NavigationView {
            VStack {
                if cartItems.isEmpty {
                    Text("Your cart is empty.")
                        .foregroundColor(.gray)
                        .padding()
                } else {
                    List(cartItems) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price, specifier: "%.2f")")
                        }
                    }
                    .padding()
                }

                Spacer()

                Text("Total: $\(cartItems.reduce(0) { $0 + $1.price }, specifier: "%.2f")")
                    .font(.headline)
                    .padding()

            }
            .navigationBarTitle("Cart")
        }
    }

    // Example function to add an item to the cart
    private func addItemToCart() {
        let newItem = CartItem(name: "Sample Item", price: 49.99)
        cartItems.append(newItem)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
