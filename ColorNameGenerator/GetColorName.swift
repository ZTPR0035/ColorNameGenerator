//
//  RandomColorGenrators.swift
//  ColorName
//
//  Created by Apple on 27/03/25.
//

import UIKit

public class GetColorName {
    public init() {}

    public func getColorDisplayView(frame: CGRect) -> UIView {
        let randomColor = Colors.allCases.randomElement()!
        let view = ColorDisplayView(color: randomColor)
        view.frame = frame
        return view
    }
}

public enum Colors: CaseIterable {
    case red, green, yellow, blue, white, black

    public var uiColor: UIColor {
        switch self {
        case .red: return .red
        case .green: return .green
        case .yellow: return .yellow
        case .blue: return .blue
        case .white: return .white
        case .black: return .black
        }
    }

    public var name: String {
        switch self {
        case .red: return "Red"
        case .green: return "Green"
        case .yellow: return "Yellow"
        case .blue: return "Blue"
        case .white: return "White"
        case .black: return "Black"
        }
    }
}

public class ColorDisplayView: UIView {
    private let nameLabel = UILabel()

    public init(color: Colors) {
        super.init(frame: .zero)
        backgroundColor = color.uiColor
        layer.cornerRadius = 10
        clipsToBounds = true

        nameLabel.text = color.name
        nameLabel.textColor = .white
        nameLabel.textAlignment = .center
        nameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false

        addSubview(nameLabel)
        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


//import Foundation
//public class GetColorName {
//    public init(){}
//    
//    public func getRandomColors() -> Colors {
//        let color = Colors.allCases[Int.random(in: 0..<6)]
//        return color
//    }
//}
//public enum Colors: CaseIterable {
//    case red
//    case green
//    case yellow
//    case blue
//    case white
//    case black
//}
