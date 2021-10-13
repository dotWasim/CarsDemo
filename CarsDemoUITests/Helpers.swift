//
//  Helpers.swift
//  CarsDemoUITests
//
//  Created by Wasim Alatrash on 10/13/21.
//

import XCTest

extension XCTestCase {
    func waitForElementToAppear(_ element: XCUIElement, timeout: TimeInterval = 10,  file: String = #file, line: UInt = #line) {
        let existsPredicate = NSPredicate(format: "exists == true")

        expectation(for: existsPredicate,
                                evaluatedWith: element, handler: nil)

        waitForExpectations(timeout: timeout) { (error) -> Void in
            if (error != nil) {
                let message = "Failed to find \(element) after \(timeout) seconds."

                self.recordFailure(withDescription: message, inFile: file, atLine: Int(line), expected: true)
            }
        }
    }

    func waitForElementToBeHittable(_ element: XCUIElement, timeout: TimeInterval = 10,  file: String = #file, line: UInt = #line) {
        let existsPredicate = NSPredicate(format: "exists == true && hittable == true")

        expectation(for: existsPredicate,
                                evaluatedWith: element, handler: nil)

        waitForExpectations(timeout: timeout) { (error) -> Void in
            if (error != nil) {
                let message = "Failed to find \(element) after \(timeout) seconds."

                self.recordFailure(withDescription: message, inFile: file, atLine: Int(line), expected: true)
            }
        }
    }
}
