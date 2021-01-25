//
//  TransitionView.swift
//  AnimationNavDemo
//
//  Created by Knoxpo MacBook Pro on 25/01/21.
//

import SwiftUI

struct TransitionView: View {
    @State private var showDetails = false
    var body: some View {
        VStack
        {
            Button(action: {
                withAnimation {
                    
                    self.showDetails.toggle()
                }
                
            })
            {
                Text("tap to show details")
            }
            
            if showDetails {
                
                Text ("Details go here")
                   // .transition(.move(edge: .bottom))
                    .transition(.scale)
                   // .transition(.slide)
            }
            
            
        }
    }
}

struct TransitionView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView()
    }
}
