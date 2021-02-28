//
//  ProductModel.swift
//  Touchdown
//
//  Created by lapedro.veloso on 26/02/21.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    var redColorValue: Double {
        color[0]
    }
    var greenColorValue: Double {
        color[1]
    }
    var blueColorValue: Double {
        color[2]
    }
    
    var formattedPrice: String {
        "$\(price)"
    }
    
}
