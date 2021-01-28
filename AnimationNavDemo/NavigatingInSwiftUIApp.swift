//
//  Navigationview.swift

//
//  Created by Knoxpo MacBook Pro on 22/01/21.
//

import SwiftUI

@main
struct NavigatingInSwiftUIApp: App {

    var window: UIWindow?
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {

           // MotherView()
          //  SubmitView()
            
            
            
            
         //   HikeView(hike: ModelData().hikes[0])
               // .environmentObject(viewRouter)
          //  FlipButtonWithAnimation()
          //  IndicatorView()
            //TransitionView()
         //   DelayView()
           // ExplisetAnimationView()
            
           // AnimationWithBindingdemo()
          //  CustumView()
      //  NewAnimationView()
            
            //27Jan
     // TextAnimationView()
      //  TextAnimationText()
         //   RotateIn3DView()
           // TextfeildAniDemo()
     //   ProgessBarView()
            
         //   TextFwithToggleView()
            
            
     
            //28jan
      //      1.
        let appFlowCoordinator = AppFlowCoordinator()
          RootView().environmentObject(appFlowCoordinator)
         //   2.
         //   GeomatryView()
         //AnimationViewShow()
        //    ImageGrideView()
        
            
        }
    }
}

