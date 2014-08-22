//
//  MergeSort.swift
//  Algorithms
//
//  Created by Salil Jain on 6/6/14.
//  Copyright (c) 2014 Saachitech. All rights reserved.
//

import Foundation

class MergeSort<T:Comparable> {
    var items : T[]
    init(unsortedItems : T[])
    {
        items = unsortedItems
    }
    func sort() -> T[] {
        sort(&items,start : 0,end :items.count - 1)
        return items
    }
    func sort(inout unsortedItems : T[], start : Int, end :Int) -> () {
        if(end - start >= 2)
        {
            let mid = (start + end)/2
            sort(&unsortedItems, start : start, end : mid)
            sort(&unsortedItems, start : mid+1, end : end)
            //Merge results
            var sortedItems = T[]()
            var i = start
            var j = mid + 1
            var currentLeft = unsortedItems[i]
            var currentRight = unsortedItems[j]
            while (i <= mid && j <= end)
            {
                if (currentLeft <= currentRight)
                {
                    sortedItems.append(currentLeft)
                    i++
                    if ( i <= mid)
                    {
                       currentLeft = unsortedItems[i]
                    }
                }
                else
                {
                    sortedItems.append(currentRight)
                    j++
                    if ( j <= end)
                    {
                        currentRight = unsortedItems[j]
                    }
                }
            }
            if ( i <= mid)
            {
                while(i <= mid)
                {
                    sortedItems.append(unsortedItems[i])
                    i++
                }
            }
            else if (j <= end)
            {
                while(j <= end)
                {
                    sortedItems.append(unsortedItems[j])
                    j++
                }
            }
            for( i = start,j = 0; i <= end ; i++)
            {
                unsortedItems[i] = sortedItems[j]
                j++
            }
            
        }
        else
        {
            if(unsortedItems[start] > unsortedItems [end])
            {
                var tmp = unsortedItems[start]
                unsortedItems[start] = unsortedItems[end]
                unsortedItems[end] = tmp
            }
        }
    }
    
}