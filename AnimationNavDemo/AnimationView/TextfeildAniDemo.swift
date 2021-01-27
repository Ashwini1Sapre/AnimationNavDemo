//
//  TextfeildAniDemo.swift
//  AnimationNavDemo
//
//  Created by Knoxpo MacBook Pro on 27/01/21.
//

import SwiftUI

struct TextfeildAniDemo: View {
    @State  var text1 = "0"
    
    
    var body: some View {
        VStack () {
            ZStack{
            TextField("Enter Text", text: $text1)
                .font(.largeTitle)
                .frame(width: 200, height: 200)
                .transition(.opacity)
                .multilineTextAlignment(.center)
                .foregroundColor(.blue)
                .id("my title" + text1)
               // print("editing end")
                
            }
            ZStack{
            Button(action: {
                withAnimation(.easeInOut(duration: 1.2)) {
                    self.text1 = "\(Int.random(in: 1...100))"
                    
                }
                
            }) {
                
                Text("Done")
                
            }
            .background(text1.isEmpty ? Color.red : Color.yellow)
            .animation(Animation.default.speed(1))
                
                
                
                
            }
        }
    }
}

struct TextfeildAniDemo_Previews: PreviewProvider {
    static var previews: some View {
        TextfeildAniDemo()
    }
}
