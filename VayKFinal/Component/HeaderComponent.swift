//
//  HeaderComponent.swift
//  VayKFinal
//
//  Created by affan khan on 2021-01-02.
//

import SwiftUI

struct HeaderComponent: View {
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
            Capsule()
                .frame(width: 120, height: 6)
                .foregroundColor(Color.secondary)
                .opacity(0.2)
            
            
        Image("logo-vayk")
            .resizable()
            .scaledToFit()
            .frame(height: 28)
            
        }
    }
}

struct HeaderComponent_Previews: PreviewProvider {
    static var previews: some View {
        HeaderComponent()
            .previewLayout(.fixed(width:375, height: 128))
    }
}
