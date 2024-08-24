//
//  AppIconView.swift
//  Resume
//
//  Created by Axel Martinez on 16/8/24.
//

import SwiftUI

struct AppIconView: View {
    let resourceName: String
    
    init(_ resourceName: String) {
        self.resourceName = resourceName
    }
    
    var body: some View {
        Image(resourceName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .frame(width: 50, height: 50)
            .shadow(radius: 5)
    }
}
