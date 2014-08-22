//
//  StackTest.swift
//  Algorithms
//
//  Created by Salil Jain on 6/6/14.
//  Copyright (c) 2014 Saachitech. All rights reserved.
//

import XCTest
import Algorithms

class StackTest: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testIntInsertions() {
        // This is an example of a functional test case.
        var intStack = Stack<Int>()
        intStack.push(4)
        intStack.push(5)
        XCTAssert(intStack.size() == 2, "Pass")
        XCTAssert(intStack.pop() == 5, "Pass")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }

}
