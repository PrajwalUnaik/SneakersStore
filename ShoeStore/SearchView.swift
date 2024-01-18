import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationView {
            VStack {
                TextField("Search", text: .constant(""))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding().background(Color.gray)

                List {
                    Text("Search results will appear here.")
                        .foregroundColor(.gray)
                        .italic()
                }
                .padding()
            }
            .navigationBarTitle("Search")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
