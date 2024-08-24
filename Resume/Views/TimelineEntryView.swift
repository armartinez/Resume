//
//  TimelineEntryView.swift
//  Resume
//
//  Created by Axel Martinez on 19/8/24.
//

import SwiftUI

struct TimelineEntryView: View {
    let logo: String
    let logoSize: ControlSize
    let years: String
    let role: String
    let alignment: LayoutDirection
    
    init(
        logo: String,
        logoSize: ControlSize = .regular,
        years: String,
        role: String,
        alignment: LayoutDirection = .leftToRight
    ) {
        self.logo = logo
        self.logoSize = logoSize
        self.years = years
        self.role = role
        self.alignment = alignment
    }
    
    var body: some View {
        HStack(alignment: .center) {
            Spacer()
            if alignment == .leftToRight {
                HStack {
                    Spacer()
                    VStack(alignment: .trailing){
                        jobDescription()
                    }
                    .multilineTextAlignment(.trailing)
                }
                
                Divider()
                    .frame(width: 2)
                    .padding(.horizontal, 10)
                
                HStack{
                    companyLogo()
                    Spacer()
                }
            } else {
                HStack {
                    Spacer()
                    companyLogo()
                }
                
                Divider()
                    .frame(width: 2)
                    .padding(.horizontal, 10)
                
                HStack {
                    VStack(alignment: .leading){
                        jobDescription()
                    }
                    .multilineTextAlignment(.leading)
                    Spacer()
                }
            }
            Spacer()
        }
    }
    
    @ViewBuilder
    func companyLogo() -> some View {
        Image(logo)
            .resizable()
            .scaledToFit()
            .frame(
                width: logoSize == .small ? 90 : 120,
                height: logoSize == .small ? 35: 50
            )
    }
    
    @ViewBuilder
    func jobDescription() -> some View {
        Text(role)
            .font(.title3)
            .fontWeight(.bold)
        Text(years)
            .font(.subheadline)
            .fontWeight(.semibold)
    }
}
