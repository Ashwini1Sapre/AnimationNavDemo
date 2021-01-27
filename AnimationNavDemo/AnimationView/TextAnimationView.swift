//
//  TextAnimationView.swift
//  AnimationNavDemo
//
//  Created by Knoxpo MacBook Pro on 27/01/21.
//

import SwiftUI

struct TextAnimationView: View {
    var aray = ["first", "second","third"]
    @State var shortString = true
    @State var currentIndex : Int = 0
    @State var firstString : String = ""
    @State var SecondString : String = ""
    var body: some View {
    
VStack{
      if shortString
      {
        Text(firstString).font(.title).fixedSize()
            
            .transition(AnyTransition.opacity.animation(.easeInOut(duration:1.0)))
        
        
      }
      if !shortString
      {
            
            Text(SecondString).font(.title).fixedSize()
                .transition(AnyTransition.opacity.animation(.easeInOut(duration:1.0)))
            
            
        }
        }
.animation(.spring())
.onAppear {
    
    firstString = aray[0]
    SecondString = aray[1]
    
    let timer = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { _ in
        
        if(shortString) {
            if currentIndex == aray.count - 1 {
                self.SecondString = aray[0]
                currentIndex = 0
            }
            else
            {
                self.SecondString = aray[currentIndex+1]
                currentIndex += 1
                
            }
            
        }
        else
        {
            if currentIndex == aray .count - 1 {
                
                self.firstString = aray[0]
                currentIndex = 0
                
            }
            else
            {
                self.firstString = aray[currentIndex+1]
                currentIndex += 1
                
                
            }
            
            
            
            
            
            
            
        }
        
        
        self.shortString.toggle()
        
        
        
        
    }
    
    
    
    
}
        
        
        
        
//
//        Button(action: {
//
//            self.shortString.toggle()
//        }){
//            Text("TAPMe").font(.subheadline)
//        }
//
        
        
        
    }
}

struct TextAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        TextAnimationView()
    }
}
