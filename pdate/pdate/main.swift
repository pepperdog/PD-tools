//
//  main.swift
//  pdate
//
//  Created by Kenny Leung on 12/2/16.
//  Copyright © 2016 Kenny Leung. All rights reserved.
//

import Foundation

do {
    let formatter = ISO8601DateFormatter()
    formatter.formatOptions = [.withFullDate, .withFullTime, .withColonSeparatorInTimeZone]
    formatter.timeZone = Date.GMT
    
    let cli = CommandLineInterface()
    cli.arg("b", "baseDate", true, "Specifies the base date to calculate from (defaults to now)")
    try cli.processCommandLine(ProcessInfo.processInfo.arguments)

    let input = cli.arguments[0]
    let lexer = pdateLexer(ANTLRInputStream(input))
    let tokens = CommonTokenStream(lexer)
    let parser = try pdateParser(tokens)
    let tree = try parser.date_expression()
    let walker = ParseTreeWalker()
    
    let inputParser = InputParser()
    if let dateString = cli.optionValue("baseDate") {
        guard let baseDate = formatter.date(from:dateString) else {
            fatalError("Could not parse baseDate into a date")
        }
        inputParser.baseDate = baseDate
    }
    
    try walker.walk(inputParser, tree)

    guard let date = inputParser.parsedDate else {
        fatalError("could not parse date")
    }
    let dateString = formatter.string(from:date)
    print("\(dateString)")
} catch ANTLRException.cannotInvokeStartRule {
    print("Error: cannot invoke start rule.")
} catch ANTLRException.recognition(let e) {
    print("Unrecoverable recognition error: \(e)")
} catch {
    print("Unknown error: \(error)")
}

