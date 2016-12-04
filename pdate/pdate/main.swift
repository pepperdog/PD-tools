//
//  main.swift
//  pdate
//
//  Created by Kenny Leung on 12/2/16.
//  Copyright © 2016 Kenny Leung. All rights reserved.
//

import Foundation

var args = ProcessInfo.processInfo.arguments

let parser = InputParser(arguments:args)
parser.parse()

let dateString = Date.GMTFormatter.string(from: parser.referenceDate)
print("\(dateString) GMT")
