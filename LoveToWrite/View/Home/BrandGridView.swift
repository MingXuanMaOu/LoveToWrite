//
//  BrandGridView.swift
//  LoveToWrite
//
//  Created by 刘铭 on 2023/1/14.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            LazyHGrid(rows: gridLayout,spacing: columnSpacing, content: {
                ForEach(brands){
                    item in BrandItemView(brand: item)
                }
            })
        }
        .frame(height: 200)
        .padding(15)
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
    }
}
