//
//  SafeEnumDecodable.swift
//  CarsDemo
//
//  Created by Wasim Alatrash on 10/13/21.
//

import Foundation

protocol SafeEnumDecodable: RawRepresentable, Decodable {
    static var fallback: Self { get }
}

extension SafeEnumDecodable where RawValue: Decodable {
   init(from decoder: Decoder) throws {
       do {
           let container = try decoder.singleValueContainer()
           let rawValue = try container.decode(RawValue.self)
           self = Self(rawValue: rawValue) ?? .fallback
       } catch {
           self = .fallback
       }
   }
}

