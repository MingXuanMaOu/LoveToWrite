//
//  HeaderItemView.swift
//  LoveToWrite
//
//  Created by 刘铭 on 2023/1/12.
//

import SwiftUI

struct HeaderItemView: View {
    
    // MARK: - Properties
    let header: Header
    
    var body: some View {
        Image(header.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct HeaderItemView_Previews: PreviewProvider {
    static var previews: some View {
        let headers: [Header] = Bundle.main.decode("header.json")
        HeaderItemView(header: headers[0])
    }
}
