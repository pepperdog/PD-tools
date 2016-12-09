//
//  StringExtensions.swift
//  pdate
//
//  Created by Kenny Leung on 12/8/16.
//  Copyright © 2016 Kenny Leung. All rights reserved.
//



// MARK: Operator Support
public func ≅ (left: String, right: String) -> Bool {
    if left.caseInsensitiveCompare(right) == .orderedSame
        || left.caseInsensitiveCompare(right + "s") == .orderedSame
        || right.caseInsensitiveCompare(left + "s") == .orderedSame {
        return true
    }
    
    return false
}

infix operator ≅ : ComparisonPrecedence
