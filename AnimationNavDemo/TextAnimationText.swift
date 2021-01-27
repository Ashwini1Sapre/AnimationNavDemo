//
//  TextAnimationText.swift
//  AnimationNavDemo
//
//  Created by Knoxpo MacBook Pro on 27/01/21.
//

import SwiftUI

struct TextAnimationText: View
{
    
    
    @State var shortString = true
    @State private var name = ""
    @State private var isEditingName = false
    
  //  @State private var text = ""
    
    var body: some View {
        
        HStack {
        Spacer()
            MyButton(label : "Button1")
        Spacer()
            MyButton(label : "Button2")
           Spacer()
            MyButton(label : "Button3")
            
            
            
            
            
            
        }
        
        VStack (alignment: .leading){
            
           Text("Name")
            .scaleEffect((self.name == "" && self.isEditingName == false) ? 1.0 : 0.75)
            .offset(y: (self.name == "" && self.isEditingName == false) ? 35 : 0 )
            
            .animation(.spring())
            
            TextField("Enter Text", text: $name)
           // TextFeild("",text: $name)
            Divider()
            
            
        }.padding()
        .onTapGesture {
            
            self.isEditingName.toggle()
            if(self.isEditingName == false) {
                
                UIApplication.shared.endEditing()
            }
            
            
        }
        
        
        
        
        
        
        
        
        
      
        
        
        
        VStack {
            if shortString {
                
                Text("This Is Short").font(.title).fixedSize()
                .transition(AnyTransition.opacity.animation(.easeInOut(duration:1.0)))
               
                // .animation(Animation.default)
            }
          
                         
                       
                        
            
            if !shortString
            {
                Text("This is longSize").font(.title).fixedSize()
                
                   .transition(AnyTransition
                                   .opacity.animation(.easeInOut(duration:1.0)))
                // .animation(Animation.default.delay(2))
                
            }
        
            Button(action: {
                withAnimation{
                
                self.shortString.toggle()
                }
                
            })
            {
                Text("TapHere").padding()
                
                
                
            }
            
            
        }
        
        
        
    }
}

struct TextAnimationText_Previews: PreviewProvider {
    static var previews: some View {
        TextAnimationText()
    }
}


struct MyButton: View {
    let label : String
    
    
@State private var stateshow = true
    
    var body : some View
    {
        return Text(label)
            .font(.title)
            .foregroundColor(.white)
            .padding(10)
            .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.blue))
            .scaleEffect(self.stateshow ? 1.2 : 1.0)
            .onLongPressGesture(minimumDuration: .infinity, maximumDistance: .infinity, pressing: { pressing in
                withAnimation(.easeInOut(duration: 0.2)) {
                    
                    self.stateshow = pressing
                }
                
            }, perform: {})
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}





extension UIApplication {
    
    func endEditing() {
        
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        
    }
    
    
    
}









