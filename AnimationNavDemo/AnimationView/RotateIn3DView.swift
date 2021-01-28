//
//  RotateIn3DView.swift
//  AnimationNavDemo
//
//  Created by Knoxpo MacBook Pro on 27/01/21.
//

import SwiftUI

struct RotateIn3DView: View {
    @State private var rotateIn3D = false
 
    @State private var horizontalAligment: HorizontalAlignment = .leading
 
    
    let wheatherBg = LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red, Color.green]), startPoint: .topLeading, endPoint: .bottomTrailing)
 
    
    
    var body: some View {
       
        VStack {
        ZStack {
            VStack(alignment: horizontalAligment) {
                
                Text("Sunday")
                Text("18")
                    .font(.system(size: 44))
                    .fontWeight(.thin)
                
                Spacer()
                
                Image(systemName: "cloud.sun.fill")
                Text("Cloudy")
                    .frame(width: 150, height: 20, alignment: .leading)
                
                Text("H:21 L:12")
                
                
                
                
                
            }
            
           
            .padding()
            .background(Color.blue)
            .background(Color.yellow)
            .cornerRadius(22)
            .foregroundColor(.white)
            
            
            
        }.frame(width: 170, height: 170, alignment: .leading)
        
        
        .rotation3DEffect(.degrees(rotateIn3D ? 12 : -12), axis: (x: rotateIn3D ? 90 : -40, y: rotateIn3D ? -45 : -90, z:0))
        
     
            
        .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true), value: rotateIn3D)
      
        .animation(.default, value: horizontalAligment)
        
        
      
        .onAppear(){
            
            
            rotateIn3D.toggle()
           
        }
         
            
            Button(action: {
                horizontalAligment = .center
                
            }, label: {
                Text("Change from horizontal to center")
            })
            
        }
    }
}

struct RotateIn3DView_Previews: PreviewProvider {
    static var previews: some View {
        RotateIn3DView()
        
            .preferredColorScheme(.dark)
    }
}
