//
//  CategoryGridView.swift
//  LoveToWrite
//
//  Created by 刘铭 on 2023/1/14.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            LazyHGrid(rows: gridLayout,alignment: .center,spacing: columnSpacing,pinnedViews: [],content: {
                Section(header: SectionView(rotateClockwise: false), footer: SectionView(rotateClockwise: true),content: {
                    ForEach(categories){
                        category in CategoryItemView(category: category)
                    }
                })
                
            })
            .frame(height: 140)
            .padding(.horizontal,15)
            .padding(.vertical,10)
        }
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
