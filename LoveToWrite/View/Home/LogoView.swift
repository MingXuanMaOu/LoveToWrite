//
//  LogoView.swift
//  LoveToWrite
//
//  Created by 刘铭 on 2023/1/12.
//

import SwiftUI

struct LogoView: View {
    
    // MARK: - Body
    var body: some View {
        HStack(spacing: 4, content: {
            Text("爱上")
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("Logo-Dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30,height: 30,alignment: .center)
            
            Text("写字")
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        })
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
