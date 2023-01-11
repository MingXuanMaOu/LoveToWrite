//
//  ContentView.swift
//  LoveToWrite
//
//  Created by 刘铭 on 2023/1/12.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        ZStack{
            VStack{
                NavigationBarView()
                    .padding(.horizontal,15)
                    .padding(.bottom)
                    .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5,x: 0,y: 5)
                ScrollView(.vertical,showsIndicators: false){
                    VStack(spacing: 0, content: {
                        HeaderTabView()
                            .padding(.vertical,20)
                        FooterView()
                            .padding(.horizontal)
                    })
                }
            }
            .background(colorBackground.ignoresSafeArea(.all,edges: .all))
        }
        .ignoresSafeArea(.all,edges: .top)
        
    }
    
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
