//
//  Stack.swift
//  Algorithms
//
//  Created by Salil Jain on 6/6/14.
//  Copyright (c) 2014 Saachitech. All rights reserved.
//

import Foundation

class Stack<T> {
    
    var items = T[]()
    init() {
        
    }
    func push(item :T) -> () {
        items.append(item)
    }
    func pop() -> T {
        return items.removeLast()
    }
    func size() -> Int
    {
        return items.count
    }
}
