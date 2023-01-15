//
//  CategoryModel.swift
//  LoveToWrite
//
//  Created by 刘铭 on 2023/1/14.
//

import Foundation

struct Category: Codable,Identifiable{
    let id: Int
    let name: String
    var image: String{
        self.name
    }
}
