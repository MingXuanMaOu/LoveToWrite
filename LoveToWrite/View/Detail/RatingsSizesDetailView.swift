//
//  RatingsSizesDetailView.swift
//  LoveToWrite
//
//  Created by 刘铭 on 2023/1/15.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    
    // MARK: - Properties
    let sizes: [String] = ["EF","F","M","B","BB"]
    
    var body: some View {
        HStack(alignment: .top,spacing: 3, content: {
            VStack(alignment: .leading,spacing: 3, content: {
                Text("评星")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center,spacing: 3, content: {
                    ForEach(1...5,id:\.self){
                        item in Button(action: {
                            
                        }, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28,height: 28,alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        })
                    }
                })
            })
            Spacer()
            VStack(alignment: .trailing,spacing: 3, content: {
                Text("笔尖规格")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center,spacing: 5, content: {
                    ForEach(sizes,id:\.self){
                        size in Button(action: {
                            
                        }, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28,height: 28,alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(RoundedRectangle(cornerRadius: 5).stroke(colorGray,lineWidth: 2))
                        })
                    }
                })
            })
            
        })
    }
}

struct RatingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView()
    }
}
