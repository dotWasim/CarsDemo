//
//  Bundle+readFile.swift
//  CarsDemo
//
//  Created by Wasim Alatrash on 10/13/21.
//

import Foundation

extension Bundle {
    public func readFile<T: Decodable>(filename: String,
                                     withExtension fileExtension: String = "json",
                                     decoder: JSONDecoder = .init()
                                    ) throws -> T{
        if let url = self.url(forResource: filename, withExtension: fileExtension),
            let data = try? Data(contentsOf: url) {

            let result = try decoder.decode(T.self, from: data)
            return result
        }
        fatalError("No file found")
    }
}
