grammar pdate;

/* Lexical rules */
WS  :  [ \t\r\n\u000C]+ -> skip;
TEXT_STRING:
	'\'' ( ~[\\'] | '\\' . )* '\''
;

// Keywords
LAST: L A S T;
NEXT: N E X T;

// Operators
PLUS:  '+' | P L U S;
MINUS: '-' | M I N U S;

// Random word takes last precedence
INTEGER: ([0-9]+)
    | O N E
    | T W O
    | T H R E E
    | F O U R
    | F I V E
    | S I X
    | S E V E N
    | E I G H T
    | N I N E
    | T E N
;
WORD: [A-Za-z]+;

/* Grammar Rules */

date_expression:
      lastnext
    | lastnext plusminus number date_unit
;

reference_date:
    lastnext;

lastnext:
    (LAST|NEXT)? WORD
;

plusminus:
    PLUS | MINUS
;

number:
    INTEGER
;

date_unit:
    WORD
;

// Support case insensitivity. See LAST/NEXT keywords
fragment A:('a'|'A');
fragment B:('b'|'B');
fragment C:('c'|'C');
fragment D:('d'|'D');
fragment E:('e'|'E');
fragment F:('f'|'F');
fragment G:('g'|'G');
fragment H:('h'|'H');
fragment I:('i'|'I');
fragment J:('j'|'J');
fragment K:('k'|'K');
fragment L:('l'|'L');
fragment M:('m'|'M');
fragment N:('n'|'N');
fragment O:('o'|'O');
fragment P:('p'|'P');
fragment Q:('q'|'Q');
fragment R:('r'|'R');
fragment S:('s'|'S');
fragment T:('t'|'T');
fragment U:('u'|'U');
fragment V:('v'|'V');
fragment W:('w'|'W');
fragment X:('x'|'X');
fragment Y:('y'|'Y');
fragment Z:('z'|'Z');
