import SwiftUI

struct AccountView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Image(systemName: "person.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
                .foregroundColor(Color.black) // Use your custom color
                .padding()

            Text("John Doe")
                .font(.title)
                .bold()
                .foregroundColor(Color.black)

            Text("john.doe@example.com")
                .foregroundColor(.gray)

            Divider()
                .padding(.horizontal)

            HStack {
                Image(systemName: "briefcase.fill")
                Text("Software Developer")
            }
            .foregroundColor(Color("AccentColor"))

            HStack {
                Image(systemName: "location.fill")
                Text("City, Country")
            }
            .foregroundColor(Color("AccentColor"))

            Divider()
                .padding(.horizontal)

            HStack {
                Image(systemName: "link")
                Text("www.johndoe.com")
                    .foregroundColor(Color("AccentColor"))
            }

            HStack {
                Image(systemName: "person.crop.circle")
                Text("Twitter: @john_doe")
                    .foregroundColor(Color("AccentColor"))
            }

            Divider()
                .padding(.horizontal)

            Button(action: {
                // Perform logout action here
            }) {
                Text("Log Out")
                    .foregroundColor(.black)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .shadow(radius: 10)
            }

            Spacer()
        }
        .padding()
        .navigationBarTitle("Account")
        .navigationBarItems(trailing:
            NavigationLink(destination: ScrollMain()) {
                Image(systemName: "gearshape.fill")
                    .foregroundColor(Color("AccentColor"))
            }
        )
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
            .previewDevice("iPhone 12")
            .preferredColorScheme(.light) // or .dark for dark mode
    }
}
