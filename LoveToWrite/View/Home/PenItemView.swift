//
//  PenItemView.swift
//  LoveToWrite
//
//  Created by 刘铭 on 2023/1/14.
//

import SwiftUI

struct PenItemView: View {
    
    let pen: Pen
    
    var body: some View {
        VStack(alignment: .leading,spacing: 6, content: {
            ZStack{
                
                Image(pen.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(Color(red: pen.red,green: pen.green,blue: pen.blue))
            .cornerRadius(12)
            
            Text(pen.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(pen.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        })
    }
}

struct PenItemView_Previews: PreviewProvider {
    static var previews: some View {
        PenItemView(pen: pens[1])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
