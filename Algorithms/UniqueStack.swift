//
//  UniqueStack.swift
//  Algorithms
//
//  Created by Salil Jain on 6/6/14.
//  Copyright (c) 2014 Saachitech. All rights reserved.
//

import Foundation

class UniqueStack<T:Equatable>: Stack<T>
{
    init () {
        super.init()
    }
    override func push(item : T) -> ()
    {
        for storedItem in items
        {
            if (item == storedItem) {
                return
            }
        }
        items.append(item)
    }
}