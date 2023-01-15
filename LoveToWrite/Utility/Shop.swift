//
//  Shop.swift
//  LoveToWrite
//
//  Created by 刘铭 on 2023/1/15.
//

import Foundation

class Shop: ObservableObject{
    @Published var showingPen: Bool = false
    @Published var selectedPen: Pen? = nil
}
