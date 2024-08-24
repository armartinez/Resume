//
//  LanguageLabelStyle.swift
//  Resume
//
//  Created by Axel Martinez on 22/8/24.
//

import SwiftUI

struct LanguageLabelStyle<Background: ShapeStyle>: LabelStyle {
    @ScaledMetric(relativeTo: .footnote) private var iconWidth = 10.0
    
    let background: Background
    let iconColor: Color
    let labelColor: Color
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.icon
                .frame(width: iconWidth)
                .foregroundColor(iconColor)
            configuration.title
                .fontWeight(.semibold)
                .foregroundColor(labelColor)
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .background(background)
        .cornerRadius(50)
    }
}
