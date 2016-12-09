// Generated from /Users/kenny/Projects/PD-tools/pdate/antlr/pdate.g4 by ANTLR 4.6
//import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link pdateParser}.
 */
public protocol pdateListener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link pdateParser#date_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDate_expression(_ ctx: pdateParser.Date_expressionContext)
	/**
	 * Exit a parse tree produced by {@link pdateParser#date_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDate_expression(_ ctx: pdateParser.Date_expressionContext)
	/**
	 * Enter a parse tree produced by {@link pdateParser#reference_date}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterReference_date(_ ctx: pdateParser.Reference_dateContext)
	/**
	 * Exit a parse tree produced by {@link pdateParser#reference_date}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitReference_date(_ ctx: pdateParser.Reference_dateContext)
	/**
	 * Enter a parse tree produced by {@link pdateParser#lastnext}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLastnext(_ ctx: pdateParser.LastnextContext)
	/**
	 * Exit a parse tree produced by {@link pdateParser#lastnext}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLastnext(_ ctx: pdateParser.LastnextContext)
	/**
	 * Enter a parse tree produced by {@link pdateParser#plusminus}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPlusminus(_ ctx: pdateParser.PlusminusContext)
	/**
	 * Exit a parse tree produced by {@link pdateParser#plusminus}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPlusminus(_ ctx: pdateParser.PlusminusContext)
	/**
	 * Enter a parse tree produced by {@link pdateParser#number}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNumber(_ ctx: pdateParser.NumberContext)
	/**
	 * Exit a parse tree produced by {@link pdateParser#number}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNumber(_ ctx: pdateParser.NumberContext)
	/**
	 * Enter a parse tree produced by {@link pdateParser#date_unit}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDate_unit(_ ctx: pdateParser.Date_unitContext)
	/**
	 * Exit a parse tree produced by {@link pdateParser#date_unit}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDate_unit(_ ctx: pdateParser.Date_unitContext)
}