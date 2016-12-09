//
//  main.swift
//  pdate
//
//  Created by Kenny Leung on 12/2/16.
//  Copyright © 2016 Kenny Leung. All rights reserved.
//

import Foundation

var args = ProcessInfo.processInfo.arguments
var input = args[1]

let lexer = pdateLexer(ANTLRInputStream(input))
let tokens = CommonTokenStream(lexer)

do {
    let parser = try pdateParser(tokens)
    let tree = try parser.date_expression()
    let walker = ParseTreeWalker()
    let inputParser = InputParser()
    try walker.walk(inputParser, tree)

    guard let date = inputParser.parsedDate else {
        fatalError("could not parse date")
    }
    let formatter = ISO8601DateFormatter()
    formatter.formatOptions = [.withFullDate, .withFullTime, .withColonSeparatorInTimeZone]
    formatter.timeZone = Date.GMT
    let dateString = formatter.string(from:date)
    print("\(dateString)")
} catch ANTLRException.cannotInvokeStartRule {
    print("Error: cannot invoke start rule.")
} catch ANTLRException.recognition(let e) {
    print("Unrecoverable recognition error: \(e)")
} catch {
    print("Unknown error: \(error)")
}

