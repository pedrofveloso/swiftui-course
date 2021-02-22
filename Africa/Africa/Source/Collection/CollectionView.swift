//
//  CollectionView.swift
//  Africa
//
//  Created by lapedro.veloso on 17/02/21.
//

import SwiftUI

struct CollectionView: View {
    // MARK: - PROPERTIES
    private let animals: [Animal] = Bundle.main.decode("animals.json")
    private let haptics = UIImpactFeedbackGenerator(style: .medium)
    
    @State private var layoutMode: LayoutMode = .list
    @State private var gridItems: [GridItem] = [GridItem(.flexible())]
    @State private var gridIcon = "square.grid.2x2"
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            Group {
                if layoutMode == .list {
                    List {
                        CoverImageView()
                            .frame(height: 300)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                        
                        ForEach(animals) { animal in
                            NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                AnimalsListView(animal: animal)
                            } //: LINK
                        } //: LOOP
                        
                        CreditsView()
                            .modifier(CenterModifier())
                    } //: LIST
                } else {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: gridItems, alignment: .center, spacing: 8) {
                            ForEach(animals) { animal in
                                NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                    Image(animal.image)
                                        .resizable()
                                        .scaledToFit()
                                        .cornerRadius(12.0)
                                } //: LINK
                            } //: LOOP
                        } //: GRID
                        .padding(10)
                        .animation(.easeIn)
                    } //: SCROOL
                } //: CONDITIONAL
            } //: GROUP
            .navigationBarTitle("Africa", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Button(action: {
                            switchLayoutMode(to: .list)
                            haptics.impactOccurred()
                        }) {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .imageScale(.large)
                                .foregroundColor(color(for: .list))
                        }
                        Button(action: {
                            switchLayoutMode(to: .grid)
                            updateGridLayout()
                            haptics.impactOccurred()
                        }) {
                            Image(systemName: gridIcon)
                                .imageScale(.large)
                                .foregroundColor(color(for: .grid))
                        }
                    } //: BUTTONS
                } //: HSTACK
            } //: TOOLBAR
        } //: NAVIGATION
    }
}

// MARK: - FUNCTIONS
private extension CollectionView {
    enum LayoutMode {
        case grid, list
    }
    
    func switchLayoutMode(to mode: LayoutMode) {
        self.layoutMode = mode
    }
    
    func color(for mode: LayoutMode) -> Color {
        return self.layoutMode == mode ? .accentColor : .white
    }
    
    func updateGridLayout() {
        let numberOfItems = gridItems.count
        gridItems = .init(repeating: .init(.flexible()), count: numberOfItems % 3 + 1)
        
        switch numberOfItems {
        case 1:
            gridIcon = "square.grid.2x2"
        case 2:
            gridIcon = "square.grid.3x2"
        case 3:
            gridIcon = "rectangle.grid.1x2"
        default:
            gridIcon = "square.grid.2x2"
        }
    }
}

// MARK: - PREVIEW
struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView()
    }
}
