//
//  TopBrandCardView.swift
//  ShoeStore
//
//  Created by Prajwal U on 17/01/24.
//

import SwiftUI

struct TopBrandCardView: View {
    let title:String
    
    var body: some View {
        Image(title)
            .resizable()
            .scaledToFit()
            .frame(width: 40,height: 40)
            .padding()
            .background(
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color(red: 214/255, green: 214/255, blue: 214/255))
            )
    }
}

#Preview {
    TopBrandCardView(title: "image6")
}
