//
//  TextFwithToggleView.swift
//  AnimationNavDemo
//
//  Created by Knoxpo MacBook Pro on 27/01/21.
//

import SwiftUI

struct TextFwithToggleView: View {
    @State private var isValid = true
    var body: some View {
        
        
        VStack {
            Form {
                TextField("Placeholder", text: .constant(""))
                    .padding(6)
                    .background(EorrorMsg().opacity(isValid ? 0 : 1))
                    .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color(.systemGray3), lineWidth: 1))
                    .padding()
                
                Toggle(isOn: $isValid.animation(), label: {
                    Text("Toggle valid")
                })
                
            }
            
            
            
            
            
        }
        
        
        
        
        
        
    }
}



struct EorrorMsg: View
{
    var body: some View {
        
        
       ZStack {
            
            
            HStack {
                
                Image(systemName: "exclamationmark.triangle.fill")
                    .foregroundColor(.red)
                    .padding(20)
                
                
                
            }
        
        HStack {
            
            
            Text("Error Alert")
                .font(.caption)
                .foregroundColor(.blue)
                .offset(x: 0, y: -28)
            
            
        }
            
            
            
            
        }
        
        
        
        
        
    }
    
    
    
    
    
}




















struct TextFwithToggleView_Previews: PreviewProvider {
    static var previews: some View {
        TextFwithToggleView()
    }
}
