//
//  Hike.swift
//  AnimationNavDemo
//
//  Created by Knoxpo MacBook Pro on 25/01/21.
//

import Foundation
import Combine
struct  Hike: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var distance: Double
    var difficulty: Int
    var observations: [Observation]
    
    static var formmator = LengthFormatter()
    
    
    var distanceText: String {
        
        return Hike.formmator
            .string(fromValue: distance, unit: .kilometer)
        
    }
    
    
    struct Observation: Codable, Hashable {
        var distanceFromStart: Double

        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
        
        
    }
    
    
    
    
    
    
}
