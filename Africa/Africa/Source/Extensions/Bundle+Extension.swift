//
//  BundleExtension.swift
//  Africa
//
//  Created by lapedro.veloso on 17/02/21.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.") // for test purposes only. Do not use fatal error on production apps;
        }
        
        guard let data = try? Data.init(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.") // for test purposes only. Do not use fatal error on production apps;
        }
        
        let decoder = JSONDecoder()
        
        guard let loadedObject = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.") // for test purposes only. Do not use fatal error on production apps;
        }
        
        return loadedObject
    }
}
