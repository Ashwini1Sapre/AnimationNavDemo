//
//  GeomatryView.swift
//  AnimationNavDemo
//
//  Created by Knoxpo MacBook Pro on 28/01/21.
//

import SwiftUI

struct GeomatryView: View {
    @Namespace var nspace
    
    @Namespace var nspace1
    @State private var flag: Bool = true
    
    
    
    var body: some View {
       
        HStack {
            if flag {
                
              
                
                
                
                
                Rectangle().fill(Color.red)
                    .matchedGeometryEffect(id: "goeffect", in: nspace1)
                    .frame(width: 100, height: 100)
                
            }
            Spacer()
            
            
            
           
            
            
            Button("Switch") { withAnimation(.easeInOut(duration: 2.0)) { flag.toggle() }}
            
            Spacer()
          
            
            if !flag {
                
                
                Circle().fill(Color.blue)
                    .matchedGeometryEffect(id: "geoeffect2", in: nspace1)
                    .frame(width: 100, height: 100)
                
            }
            
            
            
        }
       .frame(width: 250).padding(20).border(Color.gray, width: 3)
        
    }
}

struct GeomatryView_Previews: PreviewProvider {
    static var previews: some View {
        GeomatryView()
    }
}
