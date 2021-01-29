//
//  SearchWithListView.swift
//  AnimationNavDemo
//
//  Created by Knoxpo MacBook Pro on 29/01/21.
//

import SwiftUI

struct Person: Identifiable {
    let id = UUID()
    var name = ""
}




struct SearchWithListView: View {
    
    @State var searchText = ""
    @State var numberarr = ["1","2", "3", "4"]
    @State var editMode = EditMode.inactive
    var people = [
        Person(name: "Asmi"),
        Person(name: "Aaradha"),
        Person(name: "Anant"),
        Person(name: "Meethu"),
        Person(name: "Virushka")
        

    ]
    
    var people1 = [
        Person(name: "aarti"),
        Person(name: "madhuri"),
        Person(name: "namita"),
        Person(name: "pallavi"),
        Person(name: "triveni")
    
    
    
    ]


    
    var body: some View {
        
        NavigationView {
        VStack {
            
            TextField("Search here", text: $searchText)
                .padding()
            List {
                
                Section {
                    
                    ForEach (
                    
                        people.filter { Person in
                            searchText.isEmpty || Person.name.localizedStandardContains(searchText)
                        
                        }
                    )
                    {
                        Person in
                        Text(Person.name)
                    }
                  
                    }
                    
                Section {
                    
                    ForEach (
                        
                        people1.filter { person in
                            
                            searchText.isEmpty || person.name.localizedStandardContains(searchText)
                            
                        }
                        
                    
                    )
                    {
                        Person in
                        Text(Person.name)
                        
                    }
                  
                }
                
                
                
                
             
                }
            .animation(.default)
            
            List {
                
                ForEach(numberarr , id: \.self) { number in
                    
                    HStack {
                        
                        Text(number)
                        
                    }.id(UUID())
                    
                    
                    
                }
                .onMove {
                    numberarr.move(fromOffsets: $0, toOffset: $1)
                    
                }
                
                
                
                
            }
            
            .navigationBarItems(trailing: EditButton() )
            
                
            }
        
        }
        }
    
     func Move(from sourse: IndexSet , to destination: Int) {
        numberarr.move(fromOffsets: sourse, toOffset: destination)
    }
    
    
    }


struct SearchWithListView_Previews: PreviewProvider {
    static var previews: some View {
        SearchWithListView()
    }
}
