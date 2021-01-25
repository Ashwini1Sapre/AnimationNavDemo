//
//  ModelData.swift
//  AnimationNavDemo
//
//  Created by Knoxpo MacBook Pro on 25/01/21.
//

import Foundation
import Combine


final class ModelData: ObservableObject
{
    
    //@Published var
    
    var hikes: [Hike] = load("hikeData.json")
}


func load<T: Decodable>(_ filename: String) -> T {
    
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        
        fatalError("\(filename)")
    }
    
    
    do{
        
        data = try Data(contentsOf: file)
        
    } catch {
        
        fatalError("\(filename) and \(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
        
        
    } catch {
        fatalError("cloud not proceed\(filename) \(error)")
        
    }
    
    
}
