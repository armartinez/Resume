//
//  ResumeView.swift
//  Resume
//
//  Created by Axel Martinez on 13/8/24.
//

import SwiftUI

struct ResumeView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.openUrl) var openURL
    
    var body: some View {
        if horizontalSizeClass == .compact {
            ScrollView {
                VStack(alignment: .leading) {
                    ProfileView()
                        .padding(.horizontal)
                    Text("Experience")
                        .font(.headline)
                        .padding(.leading)
                    TimelineView()
                        .padding()
                        .frame(height: 600)
                        .background(.quinary)
                    gitHubLink()
                        .padding(.top)
                }
            }
            .padding(.top)
        } else {
            HStack(alignment: .top) {
                VStack {
                    ProfileView()
                        .padding(.horizontal)
                    gitHubLink()
                }
                .frame(width: 350)
                Spacer()
                TimelineView()
                    .background(.quinary)
            }
        }
    }
    
    @ViewBuilder
    func gitHubLink() -> some View {
        HStack {
            Spacer()
            Image("github-logo")
                .resizable()
                .frame(width: 50, height: 50)
                .onTapGesture {
                    openURL("https://github.com/armartinez/Resume")
                }
            Spacer()
        }
    }
}

#Preview {
    ResumeView()
}
