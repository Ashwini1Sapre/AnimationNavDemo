//
//  LogoutView.swift
//  AnimationNavDemo
//
//  Created by Knoxpo MacBook Pro on 28/01/21.
//

import SwiftUI

struct LogoutView: View {
    @EnvironmentObject var appflowconroler: AppFlowCoordinator
    var body: some View {
        
        
    /*
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [.purple,.pink]), startPoint: .topLeading, endPoint: .bottomTrailing)
            
                .edgesIgnoringSafeArea(.all)
        
            Button(action: appflowconroler.showLoginView) {
                
                Text("LOGOUT")
                    .foregroundColor(.orange)
                
            }
        
        }
*/
        
        
        
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [.purple,.red,.yellow]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            Button(action: appflowconroler.showLoginView) {
                Text("logout")
                    .foregroundColor(.green)
            }
            
            
            
            
        }
        
        
        
        
    }
}

struct LogoutView_Previews: PreviewProvider {
    static var previews: some View {
        LogoutView()
    }
}
