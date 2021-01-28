//
//  AppFlowCoordinator.swift
//  AnimationNavDemo
//
//  Created by Knoxpo MacBook Pro on 28/01/21.
//

import Foundation
import SwiftUI

final class AppFlowCoordinator: ObservableObject {
    @Published var activeFlow: Flow = .login
    
    func showLoginView()
    {
        
        withAnimation {
            activeFlow = .login
            
        }
        
    }
    
    
    func showMainView()
    {
        
        withAnimation {
            
            activeFlow = .main
            
        }
        
        
    }
    
    
    
    
}

extension AppFlowCoordinator
{
    enum Flow
    {
        case login, main
        
    }
    
    
}
