//
//  AnimationWithBindingdemo.swift
//  AnimationNavDemo
//
//  Created by Knoxpo MacBook Pro on 25/01/21.
//

import SwiftUI

struct AnimationWithBindingdemo: View {
    @State private var showToggle = false
    
    var body: some View {
        VStack
        {
            Toggle(isOn: $showToggle.animation())
            {
                Text("ToggleLabel")
            }
            
            if (showToggle)
            {Text("Welcome")
                
                //***combined transition
                //.transition(.moveAndScale)
                
                //***asymentric transition
                
                .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .bottom)))
            }
            
            
        }
    }
}


extension AnyTransition {
    
    static var moveAndScale: AnyTransition {
        
        AnyTransition.move(edge: .bottom).combined(with: .scale)
    }
    
    
}
struct AnimationWithBindingdemo_Previews: PreviewProvider {
    static var previews: some View {
        AnimationWithBindingdemo()
    }
}
