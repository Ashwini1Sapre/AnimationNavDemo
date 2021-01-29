//
//  MoveRowDemo.swift
//  AnimationNavDemo
//
//  Created by Knoxpo MacBook Pro on 29/01/21.
//

import SwiftUI

struct MoveRowDemo: View {
   @State var numberarr = ["1","2", "3", "4"]
    @State var editMode = EditMode.inactive
    var body: some View {
        NavigationView {
            
            List {
            ForEach(numberarr, id: \.self) { number in
                
                HStack {
                    Text(number)
                    
                    
                }.id(UUID())
                
                
            }
            .onMove {
                
                self.numberarr.move(fromOffsets: $0, toOffset: $1)
                
            }
            
            
            }
            .navigationBarItems(trailing: EditButton() )
        }
         
    }
}

struct MoveRowDemo_Previews: PreviewProvider {
    static var previews: some View {
        MoveRowDemo()
    }
}
