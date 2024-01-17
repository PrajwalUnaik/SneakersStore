//
//  ShoeCardName.swift
//  ShoeStore
//
//  Created by Prajwal U on 17/01/24.
//

import SwiftUI

struct ShoeCardName: View {
    
    var shoeImage:String
    var CompanyImage:String
    var shoePrice:Int = Int.random(in: 100...1000)
    var shoeName:String
    
    var body: some View {
        VStack {
            ZStack {
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color(red: 214/255, green: 214/255, blue: 214/255))
                    .frame(width: 150,height: 150)
                
                Image(shoeImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150,height: 150)
                    .padding(10)
                    .offset(y: -15)
                    //.shadow(color: Color.white, radius: 50)
                
                Image(CompanyImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width:40, height: 40)
                    .offset(y:50)
            }
            Text(shoeName).fontWeight(.medium)
                .frame(maxWidth : 150, alignment: .center)
            Text("$ \(shoePrice)")
                .fontWeight(.thin)
                .frame(maxWidth : 150, alignment: .center)
        }.shadow(radius: 4)
    }
}

#Preview {
    ShoeCardName(shoeImage: "image5", CompanyImage: "image6", shoeName: "Nike-Air")
}
