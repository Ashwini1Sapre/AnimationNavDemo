//
//  ProgessBarView.swift
//  AnimationNavDemo
//
//  Created by Knoxpo MacBook Pro on 27/01/21.
//

import SwiftUI

struct ProgessBarView: View {
    @State private var percent: CGFloat = 0
    
    
    var body: some View {
        VStack {
            Spacer()
            Color.clear.overlay(Indicator(pct: self.percent))
            Spacer()
            HStack(spacing: 10) {
                MyButton1(label: "0%", font: .headline) { withAnimation(.easeInOut(duration: 1.0)) {self.percent = 0}}
                MyButton1(label: "27%", font: .headline) {
                    withAnimation(.easeInOut(duration: 1.0)) {self.percent = 0.27 }}
                MyButton1(label: "100%", font: .headline) {
                    withAnimation(.easeInOut(duration: 1.0)) {self.percent = 1.0}
                }
                    
                }
                
        }.navigationBarTitle("demoforprobressbar")
            
            
        }
}
    


struct Indicator: View {
    
    var pct: CGFloat
    var body: some View {
        return Circle()
            .fill(LinearGradient(gradient: Gradient(colors: [.purple,.red]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .frame(width: 150, height: 150)
            .modifier(PercentageIndicator(pct: self.pct))
        
        
    }
    
}


struct MyButton1: View
{
    let label: String
    var font: Font = .title
    var textColor: Color = .white
    let action: () -> ()
    
    
    var body: some View
    {
        Button(action: {
            self.action()
            
        }, label: {
            Text(label)
                .font(font)
                .foregroundColor(textColor)
                .background(RoundedRectangle(cornerRadius: 70).foregroundColor(.purple).shadow(radius: 2))
                .frame(width: 70)
                .padding(20)
        })
        
        
    }
    
    
    
    
}







struct PercentageIndicator: AnimatableModifier {
    
    var pct: CGFloat = 0
    var animatableData: CGFloat {
        get { pct }
        set { pct = newValue }
        
    }
    
    
    func body(content: Content) -> some View {
        content
            .overlay(ArcShape(pct: pct).foregroundColor(.purple))
            .overlay(LabelView(pct: pct))
        
        
    }
    
    
    
    
    
    struct ArcShape: Shape {
        let pct: CGFloat
        
        func path(in rect: CGRect) -> Path {
            
            var p = Path()
            p.addArc(center: CGPoint(x: rect.width/2 ,y: rect.height/2), radius: rect.height / 2.0, startAngle: .degrees(0), endAngle: .degrees(360 * Double(pct)), clockwise: false)
            
            return p.strokedPath(.init(lineWidth: 10, dash: [6,3], dashPhase: 10))
            
        }
    }
    
    
    
    struct LabelView: View {
        let pct: CGFloat

        var body: some View
        {
            Text("\(Int(pct * 100)) %")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            
        }
        

    }
    
}








