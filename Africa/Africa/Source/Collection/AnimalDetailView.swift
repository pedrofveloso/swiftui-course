//
//  AnimalDetailView.swift
//  Africa
//
//  Created by lapedro.veloso on 17/02/21.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: - PROPERTIES
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
                // HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                // HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                // GALLERY
                Group {
                    HeadingView(content: (image: "photo.on.rectangle.angled",
                                          title: "Wilderness in Pictures"))
                    
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                // FACTS
                Group {
                    HeadingView(content: (image: "questionmark.circle",
                                          title: "Did you know?"))
                    InsetFactView(animal: animal)
                }
                .padding(.horizontal)
                
                // DESCRIPTION
                Group {
                    HeadingView(content: (image: "doc.plaintext",
                                          title: "All about \(animal.name)"))
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                // MAP
                Group {
                    HeadingView(content: (image: "map",
                                          title: "National Parks"))
                    
                    InsetMapView()
                }
                .padding(.horizontal)
                
                // LINK
                Group {
                    HeadingView(content: (image: "books.vertical",
                                          title: "Learn More"))
                    
                    ExternalWeblinkView(animal: animal)
                }
                .padding(.horizontal)

            } //: VSTACK
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        } //: SCROLL//: NAVIGATION
    }
}

// MARK: - PREVIEW
struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[0])
        }
    }
}
