//
//  CarsDemoUITests.swift
//  CarsDemoUITests
//
//  Created by Wasim Alatrash on 10/13/21.
//

import XCTest

class CarsDemoUITests: XCTestCase {


    func testShowAlert_WhenTapGoButton_ShouldSuccess() throws {
        let app = XCUIApplication()
        app.launch()

        self.waitForElementToBeHittable(app.buttons["Go"])
        app.buttons["Go"].tap()

        /// we can also use addUIInterruptionMonitor
        XCTAssert(app.alerts.element.staticTexts["message"].waitForExistence(timeout: 1))
    }
}
