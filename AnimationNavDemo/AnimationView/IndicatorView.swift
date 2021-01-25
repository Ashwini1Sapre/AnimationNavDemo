//
//  IndicatorView.swift
//  AnimationNavDemo
//
//  Created by Knoxpo MacBook Pro on 25/01/21.
//

import SwiftUI

struct IndicatorView: View {
    @State private var isLoading = false
    var body: some View {
        //Only one circle indicator
        
        
//        Circle()
//            .trim(from: 0, to: 0.7)
//            .stroke(Color.red, lineWidth: 4.0)
//            .frame(width: 30, height: 30)
//            .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
//          //  .animation(Animation.default.repeatForever(autoreverses: false))
//            .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
//            .onAppear() {
//
//                self.isLoading = true
//            }
       //2 circle indicator
        ZStack{
        Circle()
            .stroke(Color(.systemGray5), lineWidth: 14)
            .frame(width: 60, height:60)
            Circle()
                .trim(from: 0, to: 0.2)
                .stroke(Color.purple, lineWidth: 7)
                .frame(width: 60, height: 60)
                .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
        
                .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                .onAppear() {
                    
                    
                    self.isLoading = true
                }
        }
        
        
        ///single line indicator with roundedrectangle
        
        
        Spacer()
        
        ZStack{
            
            Text("Loading")
                .font(.system(.body, design: .rounded))
                .bold()
                .offset(x: 0, y: -25)
            RoundedRectangle(cornerRadius: 3)
                .stroke(Color(.systemGray5), lineWidth: 4)
                .frame(width: 250, height: 3)
            
            
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color.purple, lineWidth: 4)
                .frame(width: 30, height: 3)
                .offset(x: isLoading ? 110: -110, y: 0)
                .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                .onAppear() {
                    
                    self.isLoading = true
                }
            
        }
        
        
        
        
        
        
        
    }
}

struct IndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        IndicatorView()
    }
}
