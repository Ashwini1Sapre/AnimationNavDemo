//
//  LIstViewAnimation.swift
//  AnimationNavDemo
//
//  Created by Knoxpo MacBook Pro on 28/01/21.
//

import SwiftUI

struct LIstViewAnimation: View {
    private let model = [["a", "b", "c", "d","e","f","g"],
    ["g","h"],
    ["i","j","o"],]
    @State private var selectedcat = 0
    @State private var slideRight = true
    
    private var ViewingModels: [String] {
        
        model[selectedcat]
    }
    
    
    var body: some View {
        VStack(spacing: 0.0) {
            
            HStack {
                
                Button(action: {
                    withAnimation {
                        if(self.selectedcat - 1 < 0)  { self.selectedcat = self.model.count - 1 }
                        else { self.selectedcat -= 1  }
                        
                        self.slideRight = true
                    }
                    }) {
                        
                       Image(systemName: "arrow.left")
                        
                    }
                
                    Text("\(selectedcat + 1)")
                    Button(action: {
                        withAnimation {
                            if(self.selectedcat + 1 > self.model.count - 1) { self.selectedcat = 0  }
                            else
                            {
                                self.selectedcat += 1
                                
                            }
                            self.slideRight = false
                            
                            
                            
                        }
                        
                        
                    }) {
                        
                        Image(systemName: "arrow.right")
                        
                    }
                
                    
                    
                    
                
                }.font(.title)
                List(ViewingModels, id: \.self) { model in
                
                Text(model)
                
                }
                .id(selectedcat)
                .transition(.asymmetric(insertion: .move(edge: slideRight ? .leading : .trailing), removal: .move(edge: slideRight ? .trailing : .leading)))
            }.padding(10)
    }
}

struct LIstViewAnimation_Previews: PreviewProvider {
    static var previews: some View {
        LIstViewAnimation()
    }
}
