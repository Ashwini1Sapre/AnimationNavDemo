//
//  AnimationViewShow.swift
//  AnimationNavDemo
//
//  Created by Knoxpo MacBook Pro on 28/01/21.
//

import SwiftUI

struct AnimationViewShow: View {
    @State private var scale: CGFloat = 1
    @State private var rotation: Double = 0
    @State private var visibility = false
    
    @State private var isSpinning: Bool = true
    
    
    var body: some View {
        
        ZStack {
            
            Circle()
                .stroke(lineWidth: 2)
                .foregroundColor(Color.red)
                .frame(width: 300, height: 300)
            Image(systemName: "forward.fill")
                .font(.largeTitle)
                .offset(y: -180)
                .rotationEffect(.degrees(isSpinning ? 0 : 300))
                .animation(Animation.linear(duration: 4).delay(2).repeatForever(autoreverses:  false))
                .animation(Animation.linear(duration: 4).repeatForever(autoreverses: false).delay(3))
            
        }
    
        
        .onAppear() {
        
        self.isSpinning.toggle()
        }
        
        
        
        
        
        
      /*
        //Automatically Starting an Animation
        ZStack {
            
            Circle()
                .stroke(lineWidth: 2)
                .foregroundColor(Color.blue)
                .frame(width: 360, height: 360)
            Image(systemName: "forward.fill")
                .font(.largeTitle)
                .offset(y: -180)
               // .rotationEffect(.degrees(360))
                .rotationEffect(.degrees(isSpinning ? 0 : 360))
                
                .animation(Animation.linear(duration: 5).repeatForever(autoreverses: false))
            
            
            
            
            
            
        }
        .onAppear() {
            
        self.isSpinning.toggle()
            
            
        }
        */
        
      ///Transition
        
        /*
        VStack {
            
            
            Toggle(isOn:$isSpinning.animation(.linear(duration: 5))) {
                Text("tapppp")
                
            }
            .padding()
        }
        
        if isSpinning {
            
            
            Button(action: {}) {
                
                
                Text("Ex Button")
            }
            .font(.largeTitle)
           // .transition(.scale)
            //.transition(.slide)
           // .transition(.move(edge: .leading))
            
            
          
            
            //Combined transition
          
            
            
          //  .transition(AnyTransition.opacity.combined(with: .move(edge: .top)))
            
            //.transition(.fadeAndMove)
            
            
            ///asymetrical transition
            
            .transition(.asymmetric(insertion: .slide, removal: .scale))
            
        }
        
       */
         
         
         /*VStack {
        Button(action: { withAnimation(.linear (duration: 2)) {
            self.rotation = (self.rotation < 360 ? self.rotation + 60 : 0)
        }
            self.scale = (self.scale < 2.8 ? self.scale + 0.3 : 1)
            
        }) {
            
            Text("click to animate")
                .rotationEffect(.degrees(rotation))
                //.animation(.linear(duration: 1))
             //   .animation(.spring(response: 1, dampingFraction: 0.2, blendDuration: 0))
             //   .animation(Animation.linear(duration: 1).repeatCount(10 , autoreverses: false))
                .scaleEffect(scale)
              //  .repeatForever(autoreverses: true)
        }
        }
        
        */
        
        
        
        
        
        
        
        
        
    }
}

struct AnimationViewShow_Previews: PreviewProvider {
    static var previews: some View {
        AnimationViewShow()
    }
}


extension AnyTransition {
    
    static var fadeAndMove: AnyTransition
    {
        AnyTransition.opacity.combined(with: .move(edge: .bottom))
        
    }
    
    
}



