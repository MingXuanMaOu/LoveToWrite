//
//  HeaderTabView.swift
//  LoveToWrite
//
//  Created by 刘铭 on 2023/1/12.
//

import SwiftUI

struct HeaderTabView: View {
    // MARK: - Properties
    let headers: [Header] = Bundle.main.decode("header.json")
    var body: some View {
        TabView{
            ForEach(headers) { header in
                HeaderItemView(header: header)
                    .padding(.top,10)
                    .padding(.horizontal,15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct HeaderTabView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderTabView()
    }
}
