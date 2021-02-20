//
//  MapView.swift
//  Africa
//
//  Created by lapedro.veloso on 17/02/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - PROPERTIES
    @State var region: MKCoordinateRegion = {
        let region = CLLocationCoordinate2D(latitude: 6.600286,
                                            longitude: 16.4377599)
        let zoomLevel = MKCoordinateSpan(latitudeDelta: 70.0,
                                         longitudeDelta: 70.0)
        
        return MKCoordinateRegion(center: region, span: zoomLevel)
    }()
    
    private let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    // MARK: - BODY
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations) { location in
            // display a default pin
//            MapPin(coordinate: location.coordinate, tint: .accentColor)
            
            // display a defult baloon with a pin inside
//            MapMarker(coordinate: location.coordinate, tint: .accentColor)
            
            // display a custom pin
//            MapAnnotation(coordinate: location.coordinate) {
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 32, height: 32, alignment: .center)
//            }
            
            MapAnnotation(coordinate: location.coordinate) {
                MapLocationView(location: location)
            } //: ANNOTATION
        } //: MAP
        .overlay(
            HStack(alignment: .center, spacing: 10) {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                    } //: HSTACK
                    
                    Divider()
                    
                    HStack {
                        Text("Longitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                    } //: HSTACK
                } //: VSTACK
                
            } //: HSTACK
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .background(
                Color.black
                    .cornerRadius(8)
                    .opacity(0.6)
            )
            .padding()
            , alignment: .top
        )
        .overlay(
            Image(systemName: "plus")
                .opacity(0.3)
        )
    }
}

// MARK: - PREVIEW
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
