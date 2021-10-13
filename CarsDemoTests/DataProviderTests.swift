//
//  DataProviderTests.swift
//  CarsDemoTests
//
//  Created by Wasim Alatrash on 10/13/21.
//

import XCTest
@testable import CarsDemo

class DataProviderTests: XCTestCase {
    /// sut is a common name for the thing we're testing
    var sut: DataProvider!

    override func setUp() {
        sut = DataProvider()
    }

    func testCarsCount_AliRedColors_ShouldReturnTwo() {
        /// Arrange
        let expectedCount = 2
        let ownerName = "Ali"

        /// Act
        let ownerRedCars = sut.cars(for: ownerName, withColor: .red)
        let carsCount = ownerRedCars.count

        /// Assert
        XCTAssertTrue(carsCount == expectedCount, "The returned number of \(ownerName) cars with red color is \(carsCount) but the expected count is \(expectedCount)")
    }

    func testCarsCount_WhenNoOwnerWithThisName_ShouldReturnZero() {
        /// Arrange
        let ownerName = "Not Available Name"

        /// Act
        let ownerRedCars = sut.cars(for: ownerName, withColor: .red)
        let carsCount = ownerRedCars.count

        /// Assert
        XCTAssertTrue(carsCount == 0, "The returned number of \"\(ownerName)\" cars with red color is \(carsCount) but the expected count is zero because owner name is not available in owners list")
    }

    func testCarsCount_WhenOwnerHasNoCar_ShouldReturnZero() {
        /// Arrange
        let ownerName = "Sara"

        /// Act
        let ownerRedCars = sut.cars(for: ownerName, withColor: .red)
        let carsCount = ownerRedCars.count

        /// Assert
        XCTAssertTrue(carsCount == 0, "The returned number of \"\(ownerName)\" cars with red color is \(carsCount) but the expected count is zero because owner has no cars")
    }

    func testCarsCount_WhenOwnerHasNoRedCar_ShouldReturnZero() {
        /// Arrange
        let ownerName = "Chris"

        /// Act
        let ownerRedCars = sut.cars(for: ownerName, withColor: .red)
        let carsCount = ownerRedCars.count

        /// Assert
        XCTAssertTrue(carsCount == 0, "The returned number of \"\(ownerName)\" cars with red color is \(carsCount) but the expected count is zero because owner has no red cars")
    }

}
