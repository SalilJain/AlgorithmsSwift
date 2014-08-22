//
//  QuickSort.swift
//  Algorithms
//
//  Created by Salil on 7/2/14.
//  Copyright (c) 2014 Saachitech. All rights reserved.
//

import Foundation

class QuickSort<T:Comparable> {
    var items : T[]
    init(unsortedItems : T[])
    {
        items = unsortedItems
    }
    func sort() -> T[] {
        sort(&items,start : 0,end :items.count - 1)
        return items
    }
    func sort(inout unsortedItems : T[], start : Int, end :Int) -> ()
    {
        if (start < end)
        {
            var pivotIndex : Int = partition(&items, start: start, end : end)
            sort(&unsortedItems, start: start, end: pivotIndex - 1)
            sort(&unsortedItems, start: pivotIndex + 1, end: end)
        }
    }
    func partition(inout unsortedItems : T[], start : Int, end : Int) -> Int
    {
        var pivotIndex : Int = (random() % (end - start)) + start
        var pivotValue : T = unsortedItems[pivotIndex]
        swap(&unsortedItems, i: pivotIndex, j: end);
        var storedIndex : Int = start
        for (var i : Int = start; i < end - 1 ; i++)
        {
            if(unsortedItems[i] <= pivotValue)
            {
                swap(&unsortedItems,i : i,j : storedIndex)
                storedIndex++
            }
        }
        swap(&unsortedItems,i : storedIndex,j : end)
        return storedIndex;
    }
    func swap(inout items : T[], i : Int, j:Int) -> ()
    {
        var temp : T = items[i]
        items[i] = items[j]
        items[j] = temp
    }

}