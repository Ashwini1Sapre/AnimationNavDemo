//
//  LoginView.swift
//  AnimationNavDemo
//
//  Created by Knoxpo MacBook Pro on 28/01/21.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var appflowCoordinator : AppFlowCoordinator
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue,.purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
            
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 16) {
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: appflowCoordinator.showMainView) {
                    
                 Text("LOGIN")
                    .foregroundColor(.white)
                    .frame(minWidth:0 ,maxHeight: 25)
                    .padding(20)
                    .background(canLogin ? Color.red : Color.blue)
                    .cornerRadius(2)
                    
                    
                }.disabled(!canLogin)
                
                
                
                
                
            }.padding(.all)
            
            
            
            
            
            
        }
    }
    
    
    var canLogin: Bool {
        
        return !email.isEmpty && !password.isEmpty
        
    }
    
    
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(AppFlowCoordinator())
      //  environmentObject
    }
}
