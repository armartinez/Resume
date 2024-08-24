//
//  TagColor.swift
//  Resume
//
//  Created by Axel Martinez on 23/8/24.
//

import SwiftUI

struct TagColor {
    static var swift = Gradient(colors: [
        Color(red: 239/255, green: 168/255, blue: 83/255),
        Color(red: 235/255, green: 80/255, blue: 57/255)
    ])
    static var swiftui = Gradient(colors: [
        Color(red: 95/255, green: 207/255, blue: 250/255),
        Color(red: 45/255, green: 108/255, blue: 244/255)
    ])
    static var swiftdata = Gradient(colors: [
        Color(red: 221/255, green: 225/255, blue: 229/255),
        Color(red: 100/255, green: 123/255, blue: 141/255)
    ])
    
    static var appkit = Gradient(colors: [
        Color(red: 151/255, green: 148/255, blue: 1),
        Color(red: 70/255, green: 76/255, blue: 194/255)
    ])
    
    static var uikit = Gradient(colors: [
        Color(red: 80/255, green: 167/255, blue: 240/255),
        Color(red: 48/255, green: 105/255, blue: 190/255)
    ])
}
