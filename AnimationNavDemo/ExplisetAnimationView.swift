//
//  ExplisetAnimationView.swift
//  AnimationNavDemo
//
//  Created by Knoxpo MacBook Pro on 25/01/21.
//

import SwiftUI

struct ExplisetAnimationView: View {
    @State private var opacity = 1.0
    var body: some View {
        Button(action: {
            
            withAnimation(.linear(duration: 2)) {
                
                self.opacity -= 2.0
                
            }
            
        })
        {
        Text("Tap Me")
            .padding()
            .font(.title)
            .opacity(opacity)
        }
    }
}

struct ExplisetAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        ExplisetAnimationView()
    }
}
