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
    let args = ProcessInfo.processInfo.arguments
    if args.count < 2 {
        throw jsonkvcError.general(message:"must supply keypath")
    }

    let keyPaths = args[1].components(separatedBy:",")
    let input = FileHandle.standardInput.readDataToEndOfFile()
    let anything = try JSONSerialization.jsonObject(with: input, options: [])

    if let arrayInput = anything as? NSArray {
        if keyPaths[0].hasPrefix("@") {
            let results = arrayInput.value(forKeyPath:keyPaths[0])
            print("\(results)")
        } else {
            for item in arrayInput {
                
            }
        }
    } else if let dictInput = anything as? NSDictionary {
        let results = dictInput.value(forKeyPath:keyPath)
        print("\(results)")
    }

} catch {
    print("Error: \(error)")
}
