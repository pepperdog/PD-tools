// Generated from /Users/kenny/Projects/PD-tools/pdate/antlr/pdate.g4 by ANTLR 4.6
//import Antlr4

open class pdateParser: Parser {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = pdateParser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(pdateParser._ATN.getDecisionState(i)!, i))
           }
           return decisionToDFA
     }()
	internal static let _sharedContextCache: PredictionContextCache = PredictionContextCache()
	public enum Tokens: Int {
		case EOF = -1, WS = 1, TEXT_STRING = 2, LAST = 3, NEXT = 4, PLUS = 5, 
                 MINUS = 6, INTEGER = 7, WORD = 8
	}
	public static let RULE_date_expression = 0, RULE_reference_date = 1, RULE_lastnext = 2, 
                   RULE_plusminus = 3, RULE_number = 4, RULE_date_unit = 5
	public static let ruleNames: [String] = [
		"date_expression", "reference_date", "lastnext", "plusminus", "number", 
		"date_unit"
	]

	private static let _LITERAL_NAMES: [String?] = [
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, "WS", "TEXT_STRING", "LAST", "NEXT", "PLUS", "MINUS", "INTEGER", 
		"WORD"
	]
	public static let VOCABULARY: Vocabulary = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	//@Deprecated
	public let tokenNames: [String?]? = {
	    let length = _SYMBOLIC_NAMES.count
	    var tokenNames = [String?](repeating: nil, count: length)
		for i in 0..<length {
			var name = VOCABULARY.getLiteralName(i)
			if name == nil {
				name = VOCABULARY.getSymbolicName(i)
			}
			if name == nil {
				name = "<INVALID>"
			}
			tokenNames[i] = name
		}
		return tokenNames
	}()

	override
	open func getTokenNames() -> [String?]? {
		return tokenNames
	}

	override
	open func getGrammarFileName() -> String { return "pdate.g4" }

	override
	open func getRuleNames() -> [String] { return pdateParser.ruleNames }

	override
	open func getSerializedATN() -> String { return pdateParser._serializedATN }

	override
	open func getATN() -> ATN { return pdateParser._ATN }

	open override func getVocabulary() -> Vocabulary {
	    return pdateParser.VOCABULARY
	}

	public override init(_ input:TokenStream)throws {
	    RuntimeMetaData.checkVersion("4.6", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,pdateParser._ATN,pdateParser._decisionToDFA, pdateParser._sharedContextCache)
	}
	open class Date_expressionContext:ParserRuleContext {
		open func lastnext() -> LastnextContext? {
			return getRuleContext(LastnextContext.self,0)
		}
		open func plusminus() -> PlusminusContext? {
			return getRuleContext(PlusminusContext.self,0)
		}
		open func number() -> NumberContext? {
			return getRuleContext(NumberContext.self,0)
		}
		open func date_unit() -> Date_unitContext? {
			return getRuleContext(Date_unitContext.self,0)
		}
		open override func getRuleIndex() -> Int { return pdateParser.RULE_date_expression }
		override
		open func enterRule(_ listener: ParseTreeListener) {
			if listener is pdateListener {
			 	(listener as! pdateListener).enterDate_expression(self)
			}
		}
		override
		open func exitRule(_ listener: ParseTreeListener) {
			if listener is pdateListener {
			 	(listener as! pdateListener).exitDate_expression(self)
			}
		}
		override
		open func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if visitor is pdateVisitor {
			     return (visitor as! pdateVisitor<T>).visitDate_expression(self)
			}else if visitor is pdateBaseVisitor {
		    	 return (visitor as! pdateBaseVisitor<T>).visitDate_expression(self)
		    }
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	open func date_expression() throws -> Date_expressionContext {
		var _localctx: Date_expressionContext = Date_expressionContext(_ctx, getState())
		try enterRule(_localctx, 0, pdateParser.RULE_date_expression)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(18)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,0, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(12)
		 		try lastnext()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(13)
		 		try lastnext()
		 		setState(14)
		 		try plusminus()
		 		setState(15)
		 		try number()
		 		setState(16)
		 		try date_unit()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}
	open class Reference_dateContext:ParserRuleContext {
		open func lastnext() -> LastnextContext? {
			return getRuleContext(LastnextContext.self,0)
		}
		open override func getRuleIndex() -> Int { return pdateParser.RULE_reference_date }
		override
		open func enterRule(_ listener: ParseTreeListener) {
			if listener is pdateListener {
			 	(listener as! pdateListener).enterReference_date(self)
			}
		}
		override
		open func exitRule(_ listener: ParseTreeListener) {
			if listener is pdateListener {
			 	(listener as! pdateListener).exitReference_date(self)
			}
		}
		override
		open func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if visitor is pdateVisitor {
			     return (visitor as! pdateVisitor<T>).visitReference_date(self)
			}else if visitor is pdateBaseVisitor {
		    	 return (visitor as! pdateBaseVisitor<T>).visitReference_date(self)
		    }
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	open func reference_date() throws -> Reference_dateContext {
		var _localctx: Reference_dateContext = Reference_dateContext(_ctx, getState())
		try enterRule(_localctx, 2, pdateParser.RULE_reference_date)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(20)
		 	try lastnext()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}
	open class LastnextContext:ParserRuleContext {
		open func WORD() -> TerminalNode? { return getToken(pdateParser.Tokens.WORD.rawValue, 0) }
		open func LAST() -> TerminalNode? { return getToken(pdateParser.Tokens.LAST.rawValue, 0) }
		open func NEXT() -> TerminalNode? { return getToken(pdateParser.Tokens.NEXT.rawValue, 0) }
		open override func getRuleIndex() -> Int { return pdateParser.RULE_lastnext }
		override
		open func enterRule(_ listener: ParseTreeListener) {
			if listener is pdateListener {
			 	(listener as! pdateListener).enterLastnext(self)
			}
		}
		override
		open func exitRule(_ listener: ParseTreeListener) {
			if listener is pdateListener {
			 	(listener as! pdateListener).exitLastnext(self)
			}
		}
		override
		open func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if visitor is pdateVisitor {
			     return (visitor as! pdateVisitor<T>).visitLastnext(self)
			}else if visitor is pdateBaseVisitor {
		    	 return (visitor as! pdateBaseVisitor<T>).visitLastnext(self)
		    }
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	open func lastnext() throws -> LastnextContext {
		var _localctx: LastnextContext = LastnextContext(_ctx, getState())
		try enterRule(_localctx, 4, pdateParser.RULE_lastnext)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(23)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == pdateParser.Tokens.LAST.rawValue || _la == pdateParser.Tokens.NEXT.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(22)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == pdateParser.Tokens.LAST.rawValue || _la == pdateParser.Tokens.NEXT.rawValue
		 		      return testSet
		 		 }())) {
		 		try _errHandler.recoverInline(self)
		 		} else {
		 			try consume()
		 		}

		 	}

		 	setState(25)
		 	try match(pdateParser.Tokens.WORD.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}
	open class PlusminusContext:ParserRuleContext {
		open func PLUS() -> TerminalNode? { return getToken(pdateParser.Tokens.PLUS.rawValue, 0) }
		open func MINUS() -> TerminalNode? { return getToken(pdateParser.Tokens.MINUS.rawValue, 0) }
		open override func getRuleIndex() -> Int { return pdateParser.RULE_plusminus }
		override
		open func enterRule(_ listener: ParseTreeListener) {
			if listener is pdateListener {
			 	(listener as! pdateListener).enterPlusminus(self)
			}
		}
		override
		open func exitRule(_ listener: ParseTreeListener) {
			if listener is pdateListener {
			 	(listener as! pdateListener).exitPlusminus(self)
			}
		}
		override
		open func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if visitor is pdateVisitor {
			     return (visitor as! pdateVisitor<T>).visitPlusminus(self)
			}else if visitor is pdateBaseVisitor {
		    	 return (visitor as! pdateBaseVisitor<T>).visitPlusminus(self)
		    }
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	open func plusminus() throws -> PlusminusContext {
		var _localctx: PlusminusContext = PlusminusContext(_ctx, getState())
		try enterRule(_localctx, 6, pdateParser.RULE_plusminus)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(27)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == pdateParser.Tokens.PLUS.rawValue || _la == pdateParser.Tokens.MINUS.rawValue
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	} else {
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}
	open class NumberContext:ParserRuleContext {
		open func INTEGER() -> TerminalNode? { return getToken(pdateParser.Tokens.INTEGER.rawValue, 0) }
		open override func getRuleIndex() -> Int { return pdateParser.RULE_number }
		override
		open func enterRule(_ listener: ParseTreeListener) {
			if listener is pdateListener {
			 	(listener as! pdateListener).enterNumber(self)
			}
		}
		override
		open func exitRule(_ listener: ParseTreeListener) {
			if listener is pdateListener {
			 	(listener as! pdateListener).exitNumber(self)
			}
		}
		override
		open func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if visitor is pdateVisitor {
			     return (visitor as! pdateVisitor<T>).visitNumber(self)
			}else if visitor is pdateBaseVisitor {
		    	 return (visitor as! pdateBaseVisitor<T>).visitNumber(self)
		    }
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	open func number() throws -> NumberContext {
		var _localctx: NumberContext = NumberContext(_ctx, getState())
		try enterRule(_localctx, 8, pdateParser.RULE_number)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(29)
		 	try match(pdateParser.Tokens.INTEGER.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}
	open class Date_unitContext:ParserRuleContext {
		open func WORD() -> TerminalNode? { return getToken(pdateParser.Tokens.WORD.rawValue, 0) }
		open override func getRuleIndex() -> Int { return pdateParser.RULE_date_unit }
		override
		open func enterRule(_ listener: ParseTreeListener) {
			if listener is pdateListener {
			 	(listener as! pdateListener).enterDate_unit(self)
			}
		}
		override
		open func exitRule(_ listener: ParseTreeListener) {
			if listener is pdateListener {
			 	(listener as! pdateListener).exitDate_unit(self)
			}
		}
		override
		open func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if visitor is pdateVisitor {
			     return (visitor as! pdateVisitor<T>).visitDate_unit(self)
			}else if visitor is pdateBaseVisitor {
		    	 return (visitor as! pdateBaseVisitor<T>).visitDate_unit(self)
		    }
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	open func date_unit() throws -> Date_unitContext {
		var _localctx: Date_unitContext = Date_unitContext(_ctx, getState())
		try enterRule(_localctx, 10, pdateParser.RULE_date_unit)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(31)
		 	try match(pdateParser.Tokens.WORD.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

   public static let _serializedATN : String = pdateParserATN().jsonString
   public static let _ATN: ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}