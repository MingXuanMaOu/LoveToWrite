//
//  NavigationBarDetailView.swift
//  LoveToWrite
//
//  Created by 刘铭 on 2023/1/14.
//

import SwiftUI

struct NavigationBarDetailView: View {
    
    @EnvironmentObject var shop: Shop
        
    var body: some View {
        HStack{
            Button(action: {
                feedback.impactOccurred()
                withAnimation(.easeIn){
                    shop.showingPen = false
                    shop.selectedPen = nil
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            Spacer()
            Button(action: {
                
            }, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })
        }
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
    }
}
