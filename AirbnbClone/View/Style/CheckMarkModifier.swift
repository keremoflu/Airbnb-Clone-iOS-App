//
//  CheckMarkModifier.swift
//  AirbnbClone
//
//  Created by user on 22.01.2024.
//

import Foundation
import SwiftUI

struct CheckMenuModifier: ViewModifier {
    var checked: Bool = false
    func body(content: Content) -> some View {
        Group {
            if checked {
                content
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
            } else {
                content
                    .foregroundStyle(.gray)
                    .opacity(0.6)
            }
        }
    }}
