//
//  AddToCartDetailView.swift
//  LoveToWrite
//
//  Created by 刘铭 on 2023/1/15.
//

import SwiftUI

struct AddToCartDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        Button(action: {
            
        }, label: {
            Spacer()
            Text("添加到购物车")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })
        .padding(15)
        .background(Color(red: shop.selectedPen?.red ?? samplePen.red,green: shop.selectedPen?.green ?? samplePen.green,blue: shop.selectedPen?.blue ?? samplePen.blue))
        .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
    }
}
