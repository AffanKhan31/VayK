//
//  HeaderView.swift
//  VayKFinal
//
//  Created by affan khan on 2021-01-01.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - PROPERTIES
    @Binding var showGuideView: Bool
    @Binding var showInfoView: Bool
    let haptics = UINotificationFeedbackGenerator()
    
    
    
    var body: some View {
        HStack {
            Button(action: {
                //print("Information")
                playSound(sound: "sound-click", type: "mp3")
                self.haptics.notificationOccurred(.success)
                self.showInfoView.toggle()
            }) {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight:.regular))
            }
            .accentColor(Color.primary)
            .sheet(isPresented: $showInfoView){
                InfoView()
            }
            
            Spacer()
            
            Image("logo-vayk-purple")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            
            Spacer()
            
            Button(action: {
                //print("Guide")
                playSound(sound: "sound-click", type: "mp3")
                self.haptics.notificationOccurred(.success)
                self.showGuideView.toggle()
            }) {
                Image(systemName: "questionmark.circle")
                    .font(.system(size:24, weight: .regular))
            }
            .accentColor(Color.primary)
            .sheet(isPresented: $showGuideView){
                GuideView()
            }
        }
        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    @State static var showGuide: Bool = false
    @State static var showInfoView: Bool = false

    
    
    static var previews: some View {
        HeaderView(showGuideView: $showGuide, showInfoView: $showInfoView)
            .previewLayout(.fixed(width:375, height: 80))
    }
}
