//
//  ContentViewB.swift

//
//  Created by Knoxpo MacBook Pro on 22/01/21.
//

import SwiftUI

struct ContentViewB: View {
    
    @EnvironmentObject  var viewRouter: ViewRouter
  
    
    
    var body: some View {
        VStack {
            happyDog()
            Button(action:  {
                withAnimation {
                    viewRouter.currentPage  = .page1
                   // viewRouter.currentPage = .page1
                    
                }
                
              
            }){
                
                BackButtonContent()
            }
            
            
            
        }
        
        
        
    }
}

struct ContentViewB_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewB()
            .environmentObject(ViewRouter())
    }
}


struct happyDog : View {
    
    var body: some View {
      return  Image("happyDog")
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 300, height: 200)
           .cornerRadius(10)
            .clipped()
           
        
        
    }
    
    
    
}

struct BackButtonContent : View {
    
    var body: some View {
        return Text("Back")
            .foregroundColor(.white)
            .frame(width: 200, height: 50)
            .background(Color.blue)
            .cornerRadius(10)
            .padding(.top, 50)
        
        
        
    }
    
    
    
}










