//
//  CustumView.swift
//  AnimationNavDemo
//
//  Created by Knoxpo MacBook Pro on 25/01/21.
//

import SwiftUI

struct ScaledCircle: Shape {
    var animatableData: CGFloat
    
    func path(in rect: CGRect) -> Path {
        
        let maxCirecleRadius = sqrt(rect.width * rect.width + rect.height * rect.height)
        let circleRadius = maxCirecleRadius * animatableData
        let x = rect.midX - circleRadius / 2
        let y = rect.midY - circleRadius / 2
        
        let circleRect = CGRect(x: x, y: y, width: circleRadius, height: circleRadius)
        return Circle().path(in: circleRect)
    }
}


struct ClipShapedModifier<T: Shape>: ViewModifier
{
    
    let shape: T
    func body(content: Content) -> some View {
        content.clipShape(shape)
    }
    

}
struct CustumView: View {
    @State private var isShowingRed = false
    var body: some View {
        NavigationView {
            
            ZStack {
                
                Rectangle()
                
                 
                    .fill(Color.pink)
                    .frame(width: 200, height: 200)
                
                if isShowingRed{
                    
                    Rectangle()
                     
                        .fill(Color.purple)
                    
                        .frame(width: 200, height: 200)
                        .transition(.iris)
                        .zIndex(1)
                    
                    
                    
                    
                }
                
               
            }
            .navigationBarItems(trailing:  Button("Switch") {
                
                withAnimation(.easeInOut) {
                    
                    
                    self.isShowingRed.toggle()

                    
                }
                
                
                
                
            })
            
            
        }
    }
}


extension AnyTransition {
    static var iris: AnyTransition {
        
        .modifier(
        active: ClipShapedModifier(shape: ScaledCircle(animatableData: 0)),
            identity: ClipShapedModifier( shape: ScaledCircle(animatableData: 1))
            
            
            
            
        )
    }
     
}
struct CustumView_Previews: PreviewProvider {
    static var previews: some View {
        CustumView()
    }
}
