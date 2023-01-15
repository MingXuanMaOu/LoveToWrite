//
//  TitleView.swift
//  LoveToWrite
//
//  Created by 刘铭 on 2023/1/14.
//

import SwiftUI

struct TitleView: View {
    let title: String
    
    var body: some View {
        HStack{
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top,15)
        .padding(.bottom,10)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "钢 笔")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
