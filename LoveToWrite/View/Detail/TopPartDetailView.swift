//
//  TopPartDetailView.swift
//  LoveToWrite
//
//  Created by 刘铭 on 2023/1/14.
//

import SwiftUI

struct TopPartDetailView: View {
    
    @State private var isAnimating: Bool = false
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack(alignment: .center,spacing: 6, content: {
            VStack(alignment: .leading,spacing: 6, content: {
                Text("单价")
                    .fontWeight(.semibold)
                Text(shop.selectedPen?.formattedPrice ?? samplePen.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35,anchor: .leading)
            })
            .offset(y: isAnimating ? -50: -75)
            Spacer()
            Image(shop.selectedPen?.image ?? samplePen.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0: -35)
        })
        .onAppear(){
            withAnimation(.easeOut(duration: 0.75)){
                isAnimating.toggle()
            }
        }
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
    }
}
