//
//  EnvironmentValues+openURL.swift
//  Resume
//
//  Created by Axel Martinez on 23/8/24.
//

import SwiftUI

extension EnvironmentValues {
    var openUrl: OpenUrlAction {
        get { self[OpenUrlActionKey.self] }
        set { self[OpenUrlActionKey.self] = newValue }
    }
}
