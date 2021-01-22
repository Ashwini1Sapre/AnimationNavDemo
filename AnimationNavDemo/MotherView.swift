//
//  MotherView.swift

//
//  Created by Knoxpo MacBook Pro on 22/01/21.
//

import SwiftUI

struct MotherView: View {
    
    
    @EnvironmentObject var viewRouter: ViewRouter
    @State private var animationamt: CGFloat = 1
    @State private var hidden = false
    @State private var hasOffset = false
    var body: some View {
        
        
       
        switch viewRouter.currentPage {
        case .page1:
            ContentViewA()
        case .page2:
            ContentViewB()
                .transition(.scale)
            
            
            
            
            
            
        }
       
        
        Button("OK") {
            self.hidden = true
            
        }
        .opacity(hidden ? 0 : 1)
        .animation(.easeOut(duration: 2))
        
        Button("OKClick") {
            withAnimation(.interpolatingSpring(
                mass: 1,
                stiffness: 80,
                            damping: 4,
                            initialVelocity: 0)) {
                self.hasOffset.toggle()
                
            }
            
            
            
            
            
        }
        .offset(y: hasOffset ? 40 : 0)
        
        
        
        Button("Me") {
        self.animationamt += 1
        }
        .padding(5)
        .background(Color.red)
        .foregroundColor(.yellow)
        .clipShape(Circle())
        .overlay(
           Circle()
            .stroke(Color.purple)
            .scaleEffect(animationamt)
            .opacity(Double(2 - animationamt))
        
        
        .animation(
            Animation.easeOut(duration: 1)
                .repeatForever(autoreverses: true)
        )
        
        )
        .onAppear {
            
            self.animationamt = 2
            
        }
        
        
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView()
            .environmentObject(ViewRouter())
            //.environmentObject(ViewRouter())
    }
}
