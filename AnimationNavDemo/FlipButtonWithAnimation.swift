//
//  FlipButtonWithAnimation.swift
//  AnimationNavDemo
//
//  Created by Knoxpo MacBook Pro on 25/01/21.
//

import Foundation
import SwiftUI


struct FlipButtonWithAnimation: View {
    
    @Namespace private var animation
    @State private var isFlipped = false
    
    
    var body: some View {
        
        HStack {
            
            if isFlipped {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50)
                    .matchedGeometryEffect(id: "Shape", in: animation)
                     Text("Tap Me")
                        .matchedGeometryEffect(id: "Text", in: animation)
                
                
                
            }
            else
            {
               Text("Tap Me")
                .matchedGeometryEffect(id: "Text",in: animation )
                Circle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50)
                    .matchedGeometryEffect(id: "Shape", in: animation)
                
                
                
                
                
                
                
            }
            
            
        }
        .onTapGesture{
            withAnimation{
                
                self.isFlipped.toggle()
            }
            
            
        }
        
        
    }
    
    
    
    
    
    
}
