//
//  QuantityFavouiteDetailView.swift
//  LoveToWrite
//
//  Created by 刘铭 on 2023/1/15.
//

import SwiftUI

struct QuantityFavouiteDetailView: View {
    
    @State private var counter: Int = 0
    
    var body: some View {
        HStack(alignment: .center,spacing: 6, content: {
            Button(action: {
                if counter > 0 {
                    feedback.impactOccurred()
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            Text("\(counter)")
            Button(action: {
                if counter < 100 {
                    feedback.impactOccurred()
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            Spacer()
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
        })
        .font(.title)
        .foregroundColor(.black)
        .imageScale(.large)
        
    }
}

struct QuantityFavouiteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouiteDetailView()
    }
}
