//
//  FooterView.swift
//  LoveToWrite
//
//  Created by 刘铭 on 2023/1/12.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center,spacing: 10, content: {
            Text("练字")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("Logo")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyright @ Happy Liu\nAl right reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        })
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
    }
}
