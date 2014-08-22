//
//  QuickSortTest.swift
//  Algorithms
//
//  Created by Salil on 7/2/14.
//  Copyright (c) 2014 Saachitech. All rights reserved.
//

import XCTest
import Algorithms

class QuickSortTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testQuickSort() {
        // This is an example of a functional test case.
        var intArray = [4, 6, 3 ,9 , 2, 1, 13, 12, 0 , 5]
        var quickSort = QuickSort<Int>(unsortedItems: intArray)
        quickSort.sort()
        var sortedArray = sort(intArray)
        var quickSortedArray = quickSort.items
        var success = true
        for(var i = 0 ; i < quickSortedArray.count ; i++)
        {
            if(quickSortedArray[i] != sortedArray[i])
            {
                success = false
            }
        }
        print(quickSortedArray)
        print(sortedArray)
        
        XCTAssert(success, "Pass")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }

}
