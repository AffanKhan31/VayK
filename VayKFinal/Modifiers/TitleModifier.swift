//
//  TitleModifier.swift
//  VayKFinal
//
//  Created by affan khan on 2021-01-02.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.purple)
    }
}


