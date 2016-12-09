//
//  InputParser.swift
//  pdate
//
//  Created by Kenny Leung on 12/3/16.
//  Copyright © 2016 Kenny Leung. All rights reserved.
//

import Foundation

public class InputParser : pdateBaseListener {
    
    let cal :Calendar
    
    let now = Date()
    var referenceDate = Date()
    var plusminus :Calendar.SearchDirection?
    var offset :Int?
    var timeUnit :Calendar.Component?
    var parsedDate :Date?
    
    override init() {
        guard let timeZone = TimeZone(abbreviation:"GMT") else {
            fatalError("Could not create timeZone for GMT")
        }
        var calendar = Calendar(identifier:.gregorian)
        calendar.timeZone = timeZone
        self.cal = calendar
    }

    override open func exitDate_expression(_ ctx: pdateParser.Date_expressionContext) {
        guard let plusminus = self.plusminus,
            let offset = self.offset,
            let timeUnit = self.timeUnit else {
                return
        }
        self.parsedDate = cal.date(byAdding:timeUnit,
                                   value:(plusminus == .forward ? offset : -offset),
                                   to: self.referenceDate)
    }

    override open func exitReference_date(_ ctx: pdateParser.Reference_dateContext) {
        print("reference_date")
    }

    override open func exitLastnext(_ ctx: pdateParser.LastnextContext) {
        var direction = Calendar.SearchDirection.backward
        
        guard
            let lastnext = ctx.child(0) as? TerminalNode,
            let thing = ctx.child(1) as? TerminalNode
        else {
            fatalError("Could not understand \(ctx.getText())")
        }

        if lastnext.getSymbol()?.getType() == pdateParser.Tokens.LAST.rawValue {
            direction = Calendar.SearchDirection.backward
        } else if lastnext.getSymbol()?.getType() == pdateParser.Tokens.NEXT.rawValue {
            direction = Calendar.SearchDirection.forward
        } else {
            fatalError("Could not understand \(lastnext.getText()). Must start with last or next")
        }
        
        guard let weekday = self._parseWeekDay(thing.getText()) else {
            fatalError("Could not understand \(thing.getText()). It should be a weekday")
        }
        
        var components = DateComponents()
        components.weekday = weekday
        guard let refDate = cal.nextDate(after:self.now, matching:components, matchingPolicy:.nextTime, repeatedTimePolicy:.first, direction:direction) else {
            fatalError("Could not understand \(ctx.getText()). Could not parse into a date")
        }
        self.referenceDate = refDate
        self.parsedDate = refDate
    }

    override open func exitPlusminus(_ ctx: pdateParser.PlusminusContext) {
        let thing = ctx.getText()
        if thing == "-" || thing ≅ "minus" {
            self.plusminus = .backward
        } else if thing == "+" || thing ≅ "plus" {
            self.plusminus = .forward
        }
    }

    override open func exitNumber(_ ctx: pdateParser.NumberContext) {
        var offset :Int?
        
        let thing = ctx.getText()
        offset = Int(thing)
        
        if offset == nil {
            if thing ≅ "one" {
                offset = 1
            } else if thing ≅ "two" {
                offset = 2
            } else if thing ≅ "three" {
                offset = 3
            } else if thing ≅ "four" {
                offset = 4
            } else if thing ≅ "five" {
                offset = 5
            } else if thing ≅ "six" {
                offset = 6
            } else if thing ≅ "seven" {
                offset = 7
            } else if thing ≅ "eight" {
                offset = 8
            } else if thing ≅ "nine" {
                offset = 9
            } else if thing ≅ "ten" {
                offset = 10
            }
        }
        
        if offset == nil {
            fatalError("Could not understand \(thing). Could not parse into an integer.")
        }
        
        self.offset = offset
    }

    override open func exitDate_unit(_ ctx: pdateParser.Date_unitContext) {
        let thing = ctx.getText()
        if thing ≅ "year" {
            self.timeUnit = .year
        } else if thing ≅ "month" {
            self.timeUnit = .month
        } else if thing ≅ "week" {
            self.timeUnit = .weekOfYear
        } else if thing ≅ "day" {
            self.timeUnit = .day
        } else if thing ≅ "hour" {
            self.timeUnit = .hour
        } else if thing ≅ "minute" {
            self.timeUnit = .minute
        } else if thing ≅ "second" {
            self.timeUnit = .second
        }
    }
    
    private func _parseWeekDay(_ thing :String) -> Int? {
        for (index,weekday) in cal.weekdaySymbols.enumerated() {
            var testString = thing
            if weekday.endIndex < thing.endIndex {
                testString = thing[thing.startIndex...weekday.endIndex]
            }
            if testString ≅ weekday {
                return index.advanced(by:1)
            }
        }
        return nil
    }

}
