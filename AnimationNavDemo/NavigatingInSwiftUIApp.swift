//
//  Navigationview.swift

//
//  Created by Knoxpo MacBook Pro on 22/01/21.
//

import SwiftUI

@main
struct NavigatingInSwiftUIApp: App {


    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {

           // MotherView()
          //  SubmitView()
            
            
            
            
          //  HikeView(hike: ModelData().hikes[0])
               // .environmentObject(viewRouter)
          //  FlipButtonWithAnimation()
          //  IndicatorView()
            //TransitionView()
         //   DelayView()
           // ExplisetAnimationView()
            
           // AnimationWithBindingdemo()
            CustumView()

        }
    }
}

