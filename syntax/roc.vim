" Language:    Roc
" Maintainer:  Kilian Vounckx <kilianvounckx@hotmail.be>
" License:     MIT
" Latest Revision: 2023 Jun 17

if exists("b:current_syntax")
  finish
endif

" Roc keywords
syn keyword rocKeyword as dbg expect crash interface app package platform
syn keyword rocKeyword hosted exposes imports with generates packages requires provides to
" TODO expect-fx

" Roc keywords for conditional expressions
syn keyword rocConditionalKeyword if then else when is

" Integer, including a leading minus
syn match rocInt /\%(\i\|\$\)\@<![-]\?\d\+\%(e[+-]\?\d\+\)\?/
" Hex, binary, or octal number
syn match rocInt /\<0[xX]\x\+\>/
syn match rocInt /\<0[bB][01]\+\>/
syn match rocInt /\<0[oO][0-7]\+\>/
syn match rocInt /'[^\\]'/

" A floating-point number, including a leading plus or minus
syn match rocFloat /\%(\i\|\$\)\@<![-]\?\d*\.\@<!\.\d\+\%([eE][+-]\?\d\+\)\?/

" String
syn region rocString start=/"/ end=/"/ skip=/\\"\|\\\\/ contains=rocInterp,rocEscape

syn region rocInterp matchgroup=rocInterpDelim start=/\\(/ end=/)/ contained contains=rocVariable

syn match rocEscape /\\u\x\{4\}\|\\[^(]/ contained display

" Variables
syn match rocVariable /[a-z][A-Za-z0-9]*/

" Type names (no type variables yet)
syn match rocType /[A-Z][A-Za-z0-9]*/

" Operators
syn match rocOperator /[-+*/%^!]/
syn match rocOperator /\/\//
syn match rocOperator />>/
syn match rocOperator /<</
syn match rocOperator /==/
syn match rocOperator /!=/
syn match rocOperator /&&/
syn match rocOperator /||/

" Comments
syn match rocComment /\(\#[^#].*\|\#\)$/ contains=rocTodo

" Doc comments
syn match rocDocComment /\#\#.*$/

" Todo in comments
syn keyword rocTodo TODO contained

hi def link rocInt Number
hi def link rocFloat Float
hi def link rocString String
hi def link rocKeyword Keyword
hi def link rocConditionalKeyword Conditional
hi def link rocVariable Identifier
hi def link rocType Type
hi def link rocOperator Operator
hi def link rocComment Comment
hi def link rocDocComment Comment
hi def link rocTodo Todo
hi def link rocEscape SpecialChar
hi def link rocInterpDelim SpecialChar
