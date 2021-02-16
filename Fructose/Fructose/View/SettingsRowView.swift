//
//  SettingsRowView.swift
//  Fructose
//
//  Created by lapedro.veloso on 16/02/21.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    var leftLabel: String
    var rightLabel: String
    var url: String?
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 2)
            
            HStack {
                Text(leftLabel)
                    .foregroundColor(.gray)
                Spacer()
                if let urlString = url, let url = URL(string: urlString) {
                    Link(destination: url, label: {
                        HStack {
                            Text(rightLabel)
                            Image(systemName: "arrow.up.forward.app")
                                .foregroundColor(.green)
                        }
                    })
                } else {
                    Text(rightLabel)
                }
            } //: HSTACK
        } //: VSTACK
    }
}

// MARK: - PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(leftLabel: "Developer", rightLabel: "Pedro Veloso")
                .previewLayout(.fixed(width: 350, height: 60))
                .padding()
            
            SettingsRowView(leftLabel: "Github", rightLabel: "@pedrofveloso", url: "https://github.com/pedrofveloso")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
