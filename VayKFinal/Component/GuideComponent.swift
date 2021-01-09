//
//  GuideComponent.swift
//  VayKFinal
//
//  Created by affan khan on 2021-01-02.
//

import SwiftUI

struct GuideComponent: View {
    // MARK: - PROPERTIES
    
    var title: String
    var subtitle: String
    var description: String
    var icon: String
    
    
    
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(Color.purple)
            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text(title.uppercased())
                        .font(.title)
                        .fontWeight(.heavy)
                    Spacer()
                    Text(subtitle.uppercased())
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.purple)
                }
                Divider().padding(.bottom, 4)
                Text(description)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct GuideComponent_Previews: PreviewProvider {
    static var previews: some View {
        GuideComponent(
            title: "title",
            subtitle: "Swipe Right",
            description: "This is a placeholder sentence. This is a placeholder sentence. This is a placeholder sentence.",
            icon: "heart.circle")
                .previewLayout(.sizeThatFits)
    }
}
