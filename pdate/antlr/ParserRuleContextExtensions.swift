//
//  ParserContextExtensions.swift
//  pdate
//
//  Created by Kenny Leung on 12/5/16.
//  Copyright © 2016 Kenny Leung. All rights reserved.
//

import Foundation

extension ParserRuleContext {
    
    func child(_ i: Int) -> ParseTree? {
        guard let children = children , i >= 0 && i < children.count else {
            return nil
        }
        return children[i]
    }
    
}
