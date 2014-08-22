//
//  Complex.swift
//  Algorithms
//
//  Created by Salil Jain on 6/6/14.
//  Copyright (c) 2014 Saachitech. All rights reserved.
//

import Foundation
//Generic classes currently can not have generic properties
struct Complex<T:IntegerArithmetic> : Comparable {
    var (x,y) : (T,T)
    init(i:T,j:T) {
        (x,y) = (i,j)
    }
    func abs()-> T {
        return x*x+y*y;
    }
}

@infix func == <T>(left: Complex<T>, right: Complex<T>) -> Bool {
    return (left.x == right.x) && (left.y == right.y)
}

@infix func >= <T>(left: Complex<T>, right: Complex<T>) -> Bool {
    return left.abs() >= right.abs()
}

@infix func <= <T>(left: Complex<T>, right: Complex<T>) -> Bool {
    return left.abs() <= right.abs()
}

@infix func > <T>(left: Complex<T>, right: Complex<T>) -> Bool {
    return left.abs() > right.abs()
}

@infix func < <T>(left: Complex<T>, right: Complex<T>) -> Bool {
    return left.abs() < right.abs()
}