//
//  RandomColorGenrators.swift
//  ColorName
//
//  Created by Apple on 27/03/25.
//

import Foundation
public class GetColorName {
    public init(){}
    
    public func getRandomColors() -> Colors {
        let color = Colors.allCases[Int.random(in: 0..<6)]
        return color
    }
}
public enum Colors: CaseIterable {
    case red
    case green
    case yellow
    case blue
    case white
    case black
}
