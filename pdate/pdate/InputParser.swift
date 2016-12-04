//
//  InputParser.swift
//  pdate
//
//  Created by Kenny Leung on 12/3/16.
//  Copyright © 2016 Kenny Leung. All rights reserved.
//

import Foundation

public class InputParser {
    
    let cal :Calendar
    let args :[String]
    
    let now = Date()
    var referenceDate :Date
    
    init(arguments:[String]) {
        guard let timeZone = TimeZone(abbreviation:"GMT") else {
            fatalError("Could not create timeZone for GMT")
        }
        var calendar = Calendar(identifier:.gregorian)
        calendar.timeZone = timeZone
        self.cal = calendar
        self.args = arguments
        self.referenceDate = Date()
    }
    
    public func parse() {
        guard let ref = self.parseReferenceDate(at:args.startIndex.advanced(by:1)) else {
            return
        }
        self.referenceDate = ref
    }
    
    func parseReferenceDate(at:Array<String>.Index) -> Date? {
        let test = args[at]
        
        if test.caseInsensitiveCompare("last") == .orderedSame {
            let weekday = self.parseWeekDay(at:at.advanced(by:1))
            if ( weekday != nil ) {
                var components = DateComponents()
                components.weekday = weekday
                return cal.nextDate(after:self.now, matching:components, matchingPolicy:.nextTime, repeatedTimePolicy:.first, direction:.backward)
            }
        }
        
        return nil
    }
    
    func parseWeekDay(at:Array<String>.Index) -> Int? {
        let weekdays = cal.weekdaySymbols
        let test = args[at]
        
        for (index,weekday) in weekdays.enumerated() {
            var testString = test
            if weekday.endIndex < test.endIndex {
                testString = test[test.startIndex...weekday.endIndex]
            }
            if testString.caseInsensitiveCompare(weekday) == .orderedSame {
                return index.advanced(by:1)
            }
        }
        return nil
    }
    
}
