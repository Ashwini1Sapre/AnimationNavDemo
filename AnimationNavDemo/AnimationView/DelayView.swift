

import SwiftUI

struct DelayView: View {
    @State var rotation = 0.0
    var body: some View {
       Rectangle()
        
        .fill(Color.red)
        .frame(width: 200, height: 30)
        .rotationEffect(.degrees(rotation))
        .animation(Animation.easeInOut(duration: 3).delay(1))
        
        .onTapGesture {
            
            self.rotation += 360
            
        }
        
        
        
        
    }
}



struct ImmigiateAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        DelayView()
    }
}
