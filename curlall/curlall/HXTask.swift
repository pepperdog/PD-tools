//
//  HXTask.swift
//  curlall
//
//  Created by Kenny Leung on 2016-10-12.
//  Copyright © 2016 PepperDog Enterprises. All rights reserved.
//

import Foundation

public class HXTask {

    public  let process   :Process

    private let outPipe   :Pipe
    private var outData   :Data
    public  var stdout    :Data {return self.outData}
    public  var stdoutString :String? {return String(data:self.outData, encoding:.utf8)}
    private let errPipe   :Pipe
    private var errData   :Data
    public  var stdErr    :Data {return self.errData}
    public  var stderrString :String? {return String(data:self.errData, encoding:.utf8)}

    public init(launchPath :String, arguments :[String]) {
        self.process = Process()
        self.process.launchPath = launchPath
        self.process.arguments = arguments
        self.outPipe = Pipe()
        self.outData = Data()
        self.errPipe = Pipe()
        self.errData = Data()

        self.outPipe.fileHandleForReading.readabilityHandler = {
            handle in
            self.outData.append(handle.availableData)
        }
        self.errPipe.fileHandleForReading.readabilityHandler = {
            handle in
            self.outData.append(handle.availableData)
        }

        self.process.standardOutput = self.outPipe.fileHandleForWriting
        self.process.standardError  = self.errPipe.fileHandleForWriting
    }

    public func run() {
        self.process.launch()
        self.process.waitUntilExit()
        self.outPipe.fileHandleForWriting.closeFile()
        self.errPipe.fileHandleForWriting.closeFile()
    }

}
