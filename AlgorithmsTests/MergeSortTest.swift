//
//  MergeSortTest.swift
//  Algorithms
//
//  Created by Salil Jain on 6/7/14.
//  Copyright (c) 2014 Saachitech. All rights reserved.
//

import XCTest
import Algorithms

class MergeSortTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testMergeSort() {
        // This is an example of a functional test case.
        var intArray = [4, 6, 3 ,9 , 2, 1, 13, 12, 0 , 5]
        var mergeSort = MergeSort<Int>(unsortedItems: intArray)
        mergeSort.sort()
        var sortedArray = sort(intArray)
        var mergeSortedArray = mergeSort.items
        var success = true
        for(var i = 0 ; i < mergeSortedArray.count ; i++)
        {
            if(mergeSortedArray[i] != sortedArray[i])
            {
                success = false
            }
        }
        print(mergeSortedArray)
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
