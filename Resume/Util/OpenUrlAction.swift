//
//  OpenUrlAction.swift
//  Resume
//
//  Created by Axel Martinez on 23/8/24.
//

import SwiftUI

struct OpenUrlAction {
    func callAsFunction(_ url: String) {
        if let url = URL(string: url) {
            UIApplication.shared.open(url)
        }
    }
}

struct OpenUrlActionKey: EnvironmentKey {
    static var defaultValue = OpenUrlAction()
}
