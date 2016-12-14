//
//  main.swift
//  jsonkvc
//
//  Created by Kenny Leung on 2016-10-02.
//  Copyright © 2016 PepperDog Enterprises. All rights reserved.
//

import Foundation

enum jsonkvcError : Error {
    case general(message :String)
    case invalidInput(String)
}


do {
    let cli = CommandLineInterface()
    cli.arg("f", "filter", true, "filter")
    cli.arg("s", "sort", true, "sort")
    cli.arg("p", "print", true, "print")
    try cli.processCommandLine(ProcessInfo.processInfo.arguments)
    
    print("filter: \(cli.optionValue("filter")!)")
    print("sort: \(cli.optionValue("sort")!)")
    print("print: \(cli.optionValue("print")!)")
} catch {
    print("Error: \(error)")
}
