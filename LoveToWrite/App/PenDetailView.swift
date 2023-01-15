//
//  PenDetailView.swift
//  LoveToWrite
//
//  Created by 刘铭 on 2023/1/14.
//

import SwiftUI

struct PenDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        
        VStack(alignment: .leading,spacing: 5, content: {
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            HeaderDetailView()
                .padding(.horizontal)
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            VStack(alignment: .center,spacing: 0, content: {
                RatingsSizesDetailView()
                    .padding(.top,20)
                    .padding(.bottom,10)
                ScrollView(.vertical,showsIndicators: false,content: {
                    Text(shop.selectedPen?.description ?? samplePen.description)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                    
                })
                Spacer()
                QuantityFavouiteDetailView()
                    .padding(.vertical,10)
                AddToCartDetailView()
                    .padding(.bottom,20)
            })
            .padding(.horizontal)
            .background(Color.white.clipShape(CustomShape()).padding(.top,-105))
            .zIndex(0)
            Spacer()
        })
        .ignoresSafeArea(.all,edges: .all)
        .background(Color(red: shop.selectedPen?.red ?? samplePen.red,green: shop.selectedPen?.green ?? samplePen.green,blue: shop.selectedPen?.blue ?? samplePen.blue))
        .ignoresSafeArea(.all,edges: .all)
    }
}

struct PenDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PenDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
            .environmentObject(Shop())
    }
}
