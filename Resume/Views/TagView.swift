//
//  TagView.swift
//  Resume
//
//  Created by Axel Martinez on 13/8/24.
//

import SwiftUI

struct TagView<Background: ShapeStyle>: View {
    let tagName: String
    let icon: String
    let background: Background
    let iconColor: Color
    let labelColor: Color
    
    init(
        _ tagName: String,
        _ icon: String,
        _ background: Background,
        _ iconColor: Color = .white,
        _ labelColor: Color = .white
    ) {
        self.tagName = tagName
        self.icon = icon
        self.background = background
        self.iconColor = iconColor
        self.labelColor = labelColor
    }

    var body: some View {
        Label(tagName, systemImage: icon)
            .labelStyle(
                LanguageLabelStyle(
                    background: background,
                    iconColor: iconColor,
                    labelColor: labelColor
                )
            )
            .font(.caption)
    }
}

#Preview {
    TagView("SwiftUI", "swift", .blue, .black)
}
