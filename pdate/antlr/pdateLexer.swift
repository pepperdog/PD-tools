// Generated from /Users/kenny/Projects/PD-tools/pdate/antlr/pdate.g4 by ANTLR 4.6
//import Antlr4

open class pdateLexer: Lexer {
	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = pdateLexer._ATN.getNumberOfDecisions()
          for i in 0..<length {
          	    decisionToDFA.append(DFA(pdateLexer._ATN.getDecisionState(i)!, i))
          }
           return decisionToDFA
     }()

	internal static let _sharedContextCache:PredictionContextCache = PredictionContextCache()
	public static let WS=1, TEXT_STRING=2, LAST=3, NEXT=4, PLUS=5, MINUS=6, 
                   INTEGER=7, WORD=8
	public static let modeNames: [String] = [
		"DEFAULT_MODE"
	]

	public static let ruleNames: [String] = [
		"WS", "TEXT_STRING", "LAST", "NEXT", "PLUS", "MINUS", "INTEGER", "WORD", 
		"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", 
		"O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"
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

    open override func getVocabulary() -> Vocabulary {
        return pdateLexer.VOCABULARY
    }

	public override init(_ input: CharStream) {
	    RuntimeMetaData.checkVersion("4.6", RuntimeMetaData.VERSION)
		super.init(input)
		_interp = LexerATNSimulator(self, pdateLexer._ATN, pdateLexer._decisionToDFA, pdateLexer._sharedContextCache)
	}

	override
	open func getGrammarFileName() -> String { return "pdate.g4" }

    override
	open func getRuleNames() -> [String] { return pdateLexer.ruleNames }

	override
	open func getSerializedATN() -> String { return pdateLexer._serializedATN }

	override
	open func getModeNames() -> [String] { return pdateLexer.modeNames }

	override
	open func getATN() -> ATN { return pdateLexer._ATN }

    public static let _serializedATN: String = pdateLexerATN().jsonString
	public static let _ATN: ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}