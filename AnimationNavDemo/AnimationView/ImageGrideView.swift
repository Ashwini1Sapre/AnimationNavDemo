//
//  ImageGrideView.swift
//  AnimationNavDemo
//
//  Created by Knoxpo MacBook Pro on 28/01/21.
//

import SwiftUI

struct ImageGrideView: View {
    @State private var allImages = [
    
         "heart.fill",
        "bandage.fill",
        "cross.fill",
       "pills.fill",
        "cross.case.fill"
    ]
    
   
    
  

    @State private var selectedImages: [String] = []
    
    @Namespace private var imageEffect

    
    var body: some View {
        VStack {
            
            Text("All images")
            .font(.headline)
            allImagesView
            
            Spacer()
            
           Text("SelectedImage")
            .font(.headline)
            showImagesView
            
            
        }
    }
    
    private var allImagesView: some View
    {
        LazyVGrid(columns: [.init(.adaptive(minimum: 44))]) {
            
            ForEach(allImages, id: \.self) { image in
                
                Image(systemName: image)
                    .resizable()
                  //  .matchedGeometryEffect
                    
                    .matchedGeometryEffect(id: image, in: imageEffect )
                    
                    
                    .frame(width: 44, height: 44)
                    .onTapGesture {
                        withAnimation {
                            
                            allImages.removeAll() {  $0 == image }
                            selectedImages.append(image)
                            
                           }
                      
                    }
               
            }
          
        }
       
    }
    
    
    private var showImagesView: some View
    {
        LazyVGrid(columns: [.init(.adaptive(minimum: 88))]) {
            
            ForEach(selectedImages, id: \.self) { image in
                Image(systemName: image)
                    .resizable()
                    .matchedGeometryEffect(id: image, in: imageEffect)
                    .frame(width: 88, height: 88)
                    .onTapGesture {
                        
                        withAnimation {
                            
                            selectedImages.removeAll() { $0 == image }
                            selectedImages.append(image)
                        }
                        
                    }
                       
                
                
                
                
            }
            
            
            
        }

      
    }
 
}

//struct ImageGrideView_Previews: PreviewProvider {
//    static var previews: some View {
//        ImageGrideView()
//    }
//}
