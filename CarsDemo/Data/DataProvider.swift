//
//  SimpleDataProvider.swift
//  CarsDemo
//
//  Created by Wasim Alatrash on 10/13/21.
//

import Foundation


struct DataProvider {
    func cars(for name: String, withColor color: Car.Color) -> [Car] {
        guard let data: [Owner] = try? Bundle.main.readFile(filename: "SampleData") else {
            return []
        }

        let owner = data.first { $0.name.lowercased() == name.lowercased() }
        let cars  = owner?.cars?.filter { $0.color == color } ?? []
        return cars
    }
}
