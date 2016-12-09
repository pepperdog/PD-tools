// Generated from /Users/kenny/Projects/PD-tools/pdate/antlr/pdate.g4 by ANTLR 4.6
//import Antlr4

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link pdateParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
open class pdateVisitor<T>: ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link pdateParser#date_expression}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitDate_expression(_ ctx: pdateParser.Date_expressionContext) -> T{
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link pdateParser#reference_date}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitReference_date(_ ctx: pdateParser.Reference_dateContext) -> T{
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link pdateParser#lastnext}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitLastnext(_ ctx: pdateParser.LastnextContext) -> T{
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link pdateParser#plusminus}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitPlusminus(_ ctx: pdateParser.PlusminusContext) -> T{
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link pdateParser#number}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitNumber(_ ctx: pdateParser.NumberContext) -> T{
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link pdateParser#date_unit}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitDate_unit(_ ctx: pdateParser.Date_unitContext) -> T{
	 	fatalError(#function + " must be overridden")
	}

}