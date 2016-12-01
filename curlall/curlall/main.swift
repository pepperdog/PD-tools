//
//  main.swift
//  curlall
//
//  Created by Kenny Leung on 2016-10-08.
//  Copyright © 2016 PepperDog Enterprises. All rights reserved.
//

import Foundation

public func getLinkHeader(_ headersString :String?) -> String? {
    guard let headersString = headersString else {
        return nil
    }
    let headers = headersString.components(separatedBy:"\n");
    for header in headers {
        guard let range = header.range(of:"Link: ") else {
            continue
        }
        return header.substring(from:range.upperBound)
    }
    return nil
}

let regex = try NSRegularExpression(pattern:"<([^>]+)>; rel=\"([^\"]+)\"", options:[])
public func getNextURL(_ linkHeader :String) -> String? {
    let header = linkHeader as NSString
    let range = NSRange(location:0, length:header.length)
    let matches = regex.matches(in:linkHeader, options:[], range:range)
    for match in matches {
        let url = header.substring(with:match.rangeAt(1))
        let rel = header.substring(with:match.rangeAt(2))
        //print("url:\(url)\nrel:\(rel)")
        if rel == "next" {
            return url
        }
    }
    return nil
}

var list = Array<Any>()
var args = ProcessInfo.processInfo.arguments

args.removeFirst()

while true {
    args.insert("--silent", at: 0)
    let getBody = HXTask(launchPath:"/usr/bin/curl", arguments:args)
    getBody.run()
    guard let chunk = try JSONSerialization.jsonObject(with:getBody.stdout, options:[]) as? NSArray else {
        fatalError()
    }
    list.append(contentsOf:chunk)
    //print("Chunk: \(list.count) items")

    args.insert("--head", at: 0)
    let getHeaders = HXTask(launchPath:"/usr/bin/curl", arguments:args)
    getHeaders.run()
    guard let linkHeader = getLinkHeader(getHeaders.stdoutString) else {
        fatalError()
    }

    guard let nextURL = getNextURL(linkHeader) else {
        break
    }
    //print("nextURL: \(nextURL)")

    args.removeAll()
    args.append(nextURL)
}

let jsonData = try JSONSerialization.data(withJSONObject:list, options:.prettyPrinted)
guard let jsonString = String(data:jsonData, encoding:.utf8) else {
    fatalError()
}

print("\(jsonString)")
