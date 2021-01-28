//
//  RootView.swift
//  AnimationNavDemo
//
//  Created by Knoxpo MacBook Pro on 28/01/21.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject var appFlowCoordinartor: AppFlowCoordinator
    
    
    @ViewBuilder
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            if appFlowCoordinartor.activeFlow == .main {
                LogoutView().transition(.asymmetric(insertion: .scale, removal: .opacity))
                
            }
            else if appFlowCoordinartor.activeFlow == .login {
                
                LoginView().transition(.asymmetric(insertion: .slide, removal: .opacity))
            }
            else
            {
                EmptyView()
            }
            
            
            
        }
        
        
        
        
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
            .environmentObject(AppFlowCoordinator())
    }
}
