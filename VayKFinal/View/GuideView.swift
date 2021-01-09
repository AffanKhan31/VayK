//
//  GuideView.swift
//  VayKFinal
//
//  Created by affan khan on 2021-01-02.
//

import SwiftUI

struct GuideView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
        VStack (alignment: .center, spacing: 20){
            HeaderComponent()
            
            Spacer(minLength: 10)
            
        Text("Get Started!")
            .fontWeight(.black)
            .modifier(TitleModifier())
            
            Text("Discover and pick the perfect destination for your perfect vacation!")
                .lineLimit(nil)
                .multilineTextAlignment(.center)
            
            Spacer(minLength: 10)
            
            VStack(alignment: .leading, spacing: 25) {
                GuideComponent(
                title: "Like",
                    subtitle: "Swipe right",
                    description: "Do you like a destination? Touch the screen and swipe right to save it to your favourites!",
                    icon: "heart.circle")
                
                GuideComponent(title: "Dismiss",
                               subtitle: "swipe left",
                               description: "Don't like a destination? Touch the screen and swipe left. You will no longer see it!",
                               icon: "xmark.circle")
                GuideComponent(title: "Book",
                               subtitle: "Tap the button",
                               description: "Our selection of vacation destinations are perfect for you to explore new cultures, see new sights or just relax!",
                               icon: "checkmark.square")
            }
            
            
            Spacer(minLength: 10)
            
            Button(action: {
                // ACTION
                //print("A button was tapped.")
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("Continue".uppercased())
                    .modifier(ButtonModifier())
            }
            }
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding(.top, 15)
        .padding(.bottom, 25)
        .padding(.horizontal, 25)
        }
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
    }
}
