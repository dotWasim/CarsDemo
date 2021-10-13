//
//  Car.swift
//  CarsDemo
//
//  Created by Wasim Alatrash on 10/13/21.
//

import Foundation

struct Car: Decodable{
    let name: String
    let color: Color
}

extension Car {
    enum Color: String {
        case red
        case blue
        case green
        case black
        // fallback color
        case clear
    }
}

extension Car.Color: SafeEnumDecodable {
    static var fallback: Car.Color = .clear
}
