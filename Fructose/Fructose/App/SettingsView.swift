//
//  SettingsView.swift
//  Fructose
//
//  Created by lapedro.veloso on 16/02/21.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    // MARK: - SECTION 1
                    GroupBox(
                        label:
                            SettingsLabelView(info: (title: "fructose app", imageName: "info.circle"))
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are source of many essential nutrients, including potassium, dietary fiber, vitamins and much more.")
                                .font(.footnote)
                        }
                    } //: GROUPBOX
                    
                    // MARK: - SECTION 2
                    GroupBox(
                        label: SettingsLabelView(info: (title: "application", imageName: "iphone.homebutton"))) {
                        SettingsRowView(leftLabel: "Developer", rightLabel: "Pedro Veloso")
                        SettingsRowView(leftLabel: "Github", rightLabel: "@pedrofveloso", url: "https://github.com/pedrofveloso")
                        SettingsRowView(leftLabel: "Compatibility", rightLabel: "iOS 14+")
                        SettingsRowView(leftLabel: "SwiftUI", rightLabel: "2.0")
                        SettingsRowView(leftLabel: "Udemy Course", rightLabel: "SwiftUI masterclass", url: "https://www.udemy.com/course/swiftui-masterclass-course-ios-development-with-swift/")
                        SettingsRowView(leftLabel: "Instructor", rightLabel: "Robert Petras", url: "https://twitter.com/robertpetras")
                        SettingsRowView(leftLabel: "App Version", rightLabel: "1.1.0")
                    } //: GROUPBOX
                    
                } //: VSTACK
            } //: SCROLL
            .padding()
            .navigationBarTitle("Settings", displayMode: .large)
            .navigationBarItems(
                trailing:
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                    }
            )
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
