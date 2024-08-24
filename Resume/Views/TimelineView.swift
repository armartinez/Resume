//
//  TimelineView.swift
//  Resume
//
//  Created by Axel Martinez on 19/8/24.
//

import SwiftUI

struct TimelineView: View {
    @Environment(\.openUrl) var openURL
    
    var body: some View {
        VStack(spacing: 0) {
            TimelineEntryView(
                logo: "frontiers-logo",
                years: "2013-2015",
                role: "Senior Software Engineer"
            ).onTapGesture {
                openURL("https://www.frontiersin.org")
            }
            
            TimelineEntryView(
                logo: "snappcar-logo",
                logoSize: .small,
                years: "2015-2016",
                role: "Lead Developer",
                alignment: .rightToLeft
            ).onTapGesture {
                openURL("https://www.snappcar.nl")
            }
            
            TimelineEntryView(
                logo: "inmycity-logo",
                logoSize: .small,
                years: "2016-2017",
                role: "Co-Founder"
            )
            
            TimelineEntryView(
                logo: "lumenalta-logo",
                years: "2017-2024",
                role: "Senior Software Engineer",
                alignment: .rightToLeft
            ).onTapGesture {
                openURL("https://www.lumenalta.com")
            }
        }
        .font(.caption)
    }
}

#Preview {
    TimelineView()
}
