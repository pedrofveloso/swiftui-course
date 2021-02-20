//
//  MapLocationView.swift
//  Africa
//
//  Created by lapedro.veloso on 19/02/21.
//

import SwiftUI

struct MapLocationView: View {
    // MARK: - PROPERTIES
    let location: NationalParkLocation
    
    @State private var animation: Double = 0.0
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 54, height: 54, alignment: .center)
                .foregroundColor(.accentColor)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2.0)
                .frame(width: 50, height: 50, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        } //: ZSTACK
        .onAppear {
            withAnimation(Animation.easeOut(duration: 1.5).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}

// MARK: - PREVIEW
struct MapLocationView_Previews: PreviewProvider {
    static let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    static var previews: some View {
        MapLocationView(location: locations[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
