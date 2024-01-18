//
//  ScrollView.swift
//  ShoeStore
//
//  Created by Prajwal U on 17/01/24.
//

import SwiftUI


struct ScrollMain: View {
    @State private var searchText: String = ""

    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Text("Top Brands ")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 22))
                    .padding(.leading, 20)
                    .bold()
                    .fontDesign(.monospaced)
                
                HStack {
                    Spacer()
                    TopBrandCardView(title: "image6")
                    Spacer()
                    TopBrandCardView(title: "image7")
                    Spacer()
                    TopBrandCardView(title: "image8")
                    Spacer()
                    TopBrandCardView(title: "image9")
                    Spacer()
                }
                
                Text("Popular")
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.vertical, 5)
                    .font(.system(size: 20))
                    .fontDesign(.monospaced)
                
                HStack {
                    VStack {
                        ShoeCardName(shoeImage: "image3", CompanyImage: "image9", shoeName: "Nike-Air")
                        ShoeCardName(shoeImage: "image4", CompanyImage: "image7", shoeName: "Puma-Low")
                    }
                    VStack {
                        Spacer()
                            .frame(height: 40)
                        ShoeCardName(shoeImage: "image5", CompanyImage: "image6", shoeName: "Nike-Air Max 90")
                        ShoeCardName(shoeImage: "image2", CompanyImage: "image8", shoeName: "Addi-Run")
                    }
                }
                HStack(spacing:0) {
                    VStack {
                        ShoeCardName(shoeImage: "image5", CompanyImage: "image6", shoeName: "Nike-Air Max 90")
                        ShoeCardName(shoeImage: "image2", CompanyImage: "image8", shoeName: "Addi-Run")
                    }
                    VStack {
                        Spacer()
                            .frame(height: 40)
                        ShoeCardName(shoeImage: "image3", CompanyImage: "image6", shoeName: "Nike-Air")
                        ShoeCardName(shoeImage: "image4", CompanyImage: "image7", shoeName: "Puma-Low")
                    }
                }
            }.searchable(text: $searchText)
            .navigationTitle("Sneakers")
            .navigationTitle("Sneakers")
            .navigationBarItems(trailing: Image(systemName: "bell.fill").opacity(0.3))
        }.navigationTitle("Sneakers")
    }
}


#Preview {
    ScrollMain()
}
