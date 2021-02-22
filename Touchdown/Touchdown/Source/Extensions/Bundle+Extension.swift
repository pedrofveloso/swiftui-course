//
//  Bundle+Extension.swift
//  Touchdown
//
//  Created by lapedro.veloso on 22/02/21.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.") // Use fatal error only for test purposes.
        }
        
        guard let data = try? Data(contentsOf: url, options: .mappedIfSafe) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        return decodedData
    }
}
