//
//  GalleryView.swift
//  Africa
//
//  Created by lapedro.veloso on 17/02/21.
//

import SwiftUI

struct GalleryView: View {
    // MARK: - PROPERTIES
    private let animals: [Animal] = Bundle.main.decode("animals.json")
    
    @State private var selectedAnimal: String = "lion"
    @State private var gridItems = Array(repeating: GridItem(.flexible()), count: 3)
    @State private var gridNumberOfColumns = 3.0
    
    private func updateGridLayout() {
        gridItems = .init(repeating: GridItem(.flexible()),
                          count: Int(gridNumberOfColumns))
    }
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 30) {
            Image(selectedAnimal)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 6))
            
            Slider(value: $gridNumberOfColumns, in: 2...4, step: 1)
                .onChange(of: gridNumberOfColumns, perform: { value in
                    updateGridLayout()
                })
            
            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(columns: gridItems, alignment: .center, spacing: 16) {
                    ForEach(animals) { animal in
                        Image(animal.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 2.0))
                            .onTapGesture {
                                selectedAnimal = animal.image
                            }
                    } //: LOOP
                } //: GRID
                .padding(.vertical, 8)
                .animation(.easeIn)
            } //: SCROLL
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        } //: VSTACK
        .padding(.top, 24)
        .padding(.horizontal, 24)
        .clipped()
        .background(
            MotionAnimationView()
        )
    }
}

// MARK: - PREVIEW
struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
