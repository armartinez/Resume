//
//  ProfileView.swift
//  Resume
//
//  Created by Axel Martinez on 19/8/24.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.openUrl) var openURL
    
    var body: some View {
        VStack(alignment: .leading, spacing: 40) {
            VStack (alignment: .leading){
                HStack {
                    Image("memoji")
                        .resizable()
                        .frame(width: 100, height: 100)
                    VStack(alignment: .leading) {
                        Text("Axel Martinez")
                            .font(.title)
                            .fontWeight(.bold)
                        Label("Pamplona, Spain", systemImage: "mappin")
                    }
                }
                Text("Software enginner focused on Apple Platforms and Web. 19+ years of experience on projects in scientific publishing, collaborative economy, social networking and more.")
                    
            }
            
            VStack(alignment: .leading) {
                Text("Apps")
                    .font(.headline)
                HStack {
                    AppIconView("snappcar")
                        .onTapGesture {
                            openURL("https://apps.apple.com/es/app/snappcar-local-carsharing/id1205399639?l=en-GB")
                        }
                    AppIconView("wakingup")
                        .onTapGesture {
                            openURL("https://apps.apple.com/es/app/waking-up-meditation-wisdom/id1307736395?l=en-GB")
                        }
                    AppIconView("articles")
                        .onTapGesture {
                            openURL("https://testflight.apple.com/join/bHk6JFym")
                        }
                }
            }
            
            VStack(alignment: .leading) {
                Text("Open Source")
                    .font(.headline)
                HStack {
                    AppIconView("codeedit")
                        .onTapGesture {
                            openURL("https://www.codeedit.app")
                        }
                    AppIconView("datainspector")
                        .onTapGesture {
                            openURL("https://github.com/DataInspectorApp/Data-Inspector")
                        }
                }
            }
            
            VStack(alignment: .leading) {
                Text("Skills")
                    .font(.headline)
                HStack {
                    TagView("Swift", "swift", TagColor.swift)
                    TagView("SwiftUI", "swift", TagColor.swiftui, .black)
                    TagView("SwiftData", "swiftdata", TagColor.swiftdata, .black)
                }
                HStack {
                    TagView("AppKit", "macwindow.on.rectangle", TagColor.appkit)
                    TagView("UIKit", "square.on.square.dashed", TagColor.uikit)
                }
            }
            
            Spacer()
        }
    }
}

#Preview {
    ProfileView()
}
