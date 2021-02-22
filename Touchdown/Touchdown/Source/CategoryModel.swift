//
//  CategoryModel.swift
//  Touchdown
//
//  Created by lapedro.veloso on 22/02/21.
//

import SwiftUI

struct Category: Codable, Identifiable {
    let id: Int
    let name, image: String
}
