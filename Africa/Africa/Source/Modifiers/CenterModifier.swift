//
//  CenterModifier.swift
//  Africa
//
//  Created by lapedro.veloso on 21/02/21.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        } //: HSTACK
    }
}
