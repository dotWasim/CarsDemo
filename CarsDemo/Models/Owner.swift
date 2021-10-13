//
//  Owner.swift
//  CarsDemo
//
//  Created by Wasim Alatrash on 10/13/21.
//

import Foundation

struct Owner: Codable {
    let name: String
    let cars: [Car]?
}
