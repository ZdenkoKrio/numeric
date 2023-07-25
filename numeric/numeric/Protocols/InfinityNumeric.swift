//
//  Infinity.swift
//  numeric
//
//  Created by Zdenko Čepan on 25.07.2023.
//

import Foundation


protocol InfinityNumeric: Equatable {
    init(_ num: Int)
    init(_ num: any InfinityNumeric)
    
    func power(second: any InfinityNumeric) -> any InfinityNumeric
    func digitCount(second: any InfinityNumeric) -> any InfinityNumeric
    func digitSum(second: any InfinityNumeric) -> any InfinityNumeric
    
    static postfix func --(me: inout any InfinityNumeric) -> any InfinityNumeric
    static postfix func ++(me: inout any InfinityNumeric) -> any InfinityNumeric
    
    static func -(left: any InfinityNumeric, right: any InfinityNumeric) -> any InfinityNumeric
    static func +(left: any InfinityNumeric, right: any InfinityNumeric) -> any InfinityNumeric
    static func *(left: any InfinityNumeric, right: any InfinityNumeric) -> any InfinityNumeric
    static func /(left: any InfinityNumeric, right: any InfinityNumeric) -> any InfinityNumeric
    
    static func -(left: any InfinityNumeric, right: Int) -> any InfinityNumeric
    static func +(left: any InfinityNumeric, right: Int) -> any InfinityNumeric
    static func *(left: any InfinityNumeric, right: Int) -> any InfinityNumeric
    static func /(left: any InfinityNumeric, right: Int) -> any InfinityNumeric
    
    static func -=(left: inout any InfinityNumeric, right: any InfinityNumeric)
    static func +=(left: inout any InfinityNumeric, right: any InfinityNumeric)
    static func *=(left: inout any InfinityNumeric, right: any InfinityNumeric)
    static func /=(left: inout any InfinityNumeric, right: any InfinityNumeric)
    
    static func -=(left: inout any InfinityNumeric, right: Int)
    static func +=(left: inout any InfinityNumeric, right: Int)
    static func *=(left: inout any InfinityNumeric, right: Int)
    static func /=(left: inout any InfinityNumeric, right: Int)
    
    static func == (left: any InfinityNumeric, right: any InfinityNumeric) -> Bool
    static func != (left: any InfinityNumeric, right: any InfinityNumeric) -> Bool
    static func <= (left: any InfinityNumeric, right: any InfinityNumeric) -> Bool
    static func >= (left: any InfinityNumeric, right: any InfinityNumeric) -> Bool
    static func > (left: any InfinityNumeric, right: any InfinityNumeric) -> Bool
    static func < (left: any InfinityNumeric, right: any InfinityNumeric) -> Bool
    
    static func == (left: any InfinityNumeric, right: Int) -> Bool
    static func != (left: any InfinityNumeric, right: Int) -> Bool
    static func <= (left: any InfinityNumeric, right: Int) -> Bool
    static func >= (left: any InfinityNumeric, right: Int) -> Bool
    static func > (left: any InfinityNumeric, right: Int) -> Bool
    static func < (left: any InfinityNumeric, right: Int) -> Bool
    
    static func == (left: Int, right: any InfinityNumeric) -> Bool
    static func != (left: Int, right: any InfinityNumeric) -> Bool
    static func <= (left: Int, right: any InfinityNumeric) -> Bool
    static func >= (left: Int, right: any InfinityNumeric) -> Bool
    static func > (left: Int, right: any InfinityNumeric) -> Bool
    static func < (left: Int, right: any InfinityNumeric) -> Bool
}
