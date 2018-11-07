" Vim syntax file
" Language: RS274/NGC
" Original Creator: Gary Fixler <gfixler.emc@gmail.com>
" Modifications: Greg Jurman <jurman.greg@gmail.com>
" Last Change: 2014 Apr 15

if exists("b:current_syntax")
    finish
endif

syn case ignore

syntax match ngcConstant /\(\-\=[.0-9]*\)/
syntax keyword ngcConditional if else endif
syntax keyword ngcRepeat do while endwhile break continue end goto
syntax keyword ngcFunction sub endsub call return
syntax keyword ngcOperator EQ NE GT GE LT LE ABS ACOS ASIN ATAN COS EXP FIX FUP LN ROUND SIN SQRT TAN MOD AND OR
syntax match ngcOperatorPunc "[%\-+*/\[\]]"
syntax match ngcFileBlock /^%$/
syntax match ngcProgramID /\(O[0-9][0-9]*\|:[0-9][0-9]*\)/
syntax match ngcIdentifier /#<*[A-Z_0-9]*>*/
syntax match ngcLineNumbers /\(n[0-9][0-9]*\)/
syntax keyword ngcTodo TODO FIXME XXX contained
syntax match ngcComment /([^)]*)/ contains=ngcTodo
syntax match ngcMessage /(\s*MSG\s*,.*)/ contains=ngcIdentifier
syntax match ngcLogOpen /(\s*LOGOPEN\s*,.*)/
syntax match ngcLogClose /(\s*LOGCLOSE\s*)/
syntax match ngcLog /(\s*LOG\s*,.*)/ contains=ngcIdentifier
syntax match ngcPrint /(\s*PRINT\s*,.*)/ contains=ngcIdentifier
syntax match ngcDebug /(\s*DEBUG\s*,.*)/ contains=ngcIdentifier
syntax match ngcGCodes /\s*\(g[0-9][0-9]*\)/
syntax match ngcGCodesAlt /\s*\(g[0-9][0-9]*\.[0-9]\)/
syntax match ngcMCodes /\s*\(m[0-9][0-9]*\)/
syntax match ngcAxes /\s*\([abc][-#]*[0-9.][.]*[0-9]*\)/ contains=ngcIdentifier
syntax match ngcXAxisScaled /\s*\([xui] *[-+#]\?[1-9][0-9]*\)/ contains=ngcIdentifier
syntax match ngcYAxisScaled /\s*\([yvj] *[-+#]\?[1-9][0-9]*\)/ contains=ngcIdentifier
syntax match ngcZAxisScaled /\s*\([zwk] *[-+#]\?[1-9][0-9]*\)/ contains=ngcIdentifier
syntax match ngcFeedScaled /\s*\(f *#\?[1-9][0-9]*\)/ contains=ngcIdentifier
syntax match ngcXAxis /\s*\([xui] *[-+#]\?[0-9]*\.[0-9]*\)/ contains=ngcIdentifier
syntax match ngcYAxis /\s*\([yvj] *[-+#]\?[0-9]*\.[0-9]*\)/ contains=ngcIdentifier
syntax match ngcZAxis /\s*\([zwk] *[-+#]\?[0-9]*\.[0-9]*\)/ contains=ngcIdentifier
syntax match ngcFeed /\s*\([f] *[#]\?[0-9]*\.[0-9]*\)/ contains=ngcIdentifier
syntax match ngcSpecials /\s*\(,[c][#-]*[0-9.][.]*[0-9]*\|[relpqds][-#]*[0-9.][.]*[0-9]*\)\s*/ contains=ngcIdentifier
syntax match ngcTool /[ht][0-9][0-9]*/
syntax match ngcBlockSkip /^\/.*/

hi link ngcXAxisScaled Error
hi link ngcYAxisScaled Error
hi link ngcZAxisScaled Error
hi link ngcFeedScaled Error
highlight ngcFileBlock ctermfg=White ctermbg=Red cterm=bold
highlight ngcProgramID ctermfg=White cterm=bold
highlight ngcXAxis ctermfg=34
highlight ngcYAxis ctermfg=20
highlight ngcZAxis ctermfg=124
highlight ngcAxes ctermfg=102
highlight ngcSpecials ctermfg=101
highlight ngcBlockSkip ctermfg=White cterm=bold
highlight link ngcConstant Constant
highlight link ngcConditional Conditional
highlight link ngcRepeat Repeat
highlight link ngcFunction Function
highlight link ngcOperator Operator
highlight link ngcOperatorPunc Operator
highlight link ngcIdentifier Identifier
highlight link ngcLabel Label
highlight link ngcLineNumbers LineNr
highlight link ngcTodo Todo
highlight link ngcComment Comment
highlight link ngcMessage SpecialComment
highlight link ngcLogOpen SpecialComment
highlight link ngcLogClose SpecialComment
highlight link ngcLog SpecialComment
highlight link ngcPrint SpecialComment
highlight link ngcDebug Debug
highlight link ngcGCodes Keyword
highlight link ngcGCodesAlt Keyword
highlight link ngcMCodes Keyword
highlight link ngcAxes SpecialChar
highlight ngcFeed ctermfg=89
highlight ngcTool ctermfg=94

let b:current_syntax = "ngc"
