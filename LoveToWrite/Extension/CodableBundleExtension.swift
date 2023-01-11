//
//  CodableBundleExtension.swift
//  LoveToWrite
//
//  Created by 刘铭 on 2023/1/12.
//

import Foundation

extension Bundle{
    func decode<T: Codable>(_ file: String) -> T{
        guard let url = self.url(forResource: file,withExtension: nil)
        else{
            fatalError("载入本地文件 \(file) 失败")
        }
        
        guard let data = try? Data(contentsOf: url)
        else{
            fatalError("从Bundle读取 \(file) 中的数据失败！")
        }
        
        let decode = JSONDecoder()
        
        guard let loaded = try? decode.decode(T.self, from: data)
        else{
            fatalError("从Bundle中解析 \(file) 文件的数据失败！")
        }
        return loaded
    }
}

