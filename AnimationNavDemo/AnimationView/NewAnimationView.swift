//
//  NewAnimationView.swift
//  AnimationNavDemo
//
//  Created by Knoxpo MacBook Pro on 27/01/21.
//

import SwiftUI

struct NewAnimationView: View {
    @State var toggle = false
    @State var scale = false
    var body: some View {
        VStack{
            if self.toggle{
                Rectangle()
                    .fill(Color.purple)
                    .frame(width: 200, height: 200)
                  
                    
            }
          //  .fill(Color.purple)
            Button(action: {
                self.toggle.toggle()
                withAnimation(.easeInOut(duration: 1.5)){
                    self.scale.toggle()
                }
           
            }){
                
                Text("Tap Mee")
                    .scaleEffect(self.scale ? 2 : 1)
                
            }
            
        }
        .frame(width: 400, height: 400)
    }
}

struct NewAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        NewAnimationView()
    }
}
