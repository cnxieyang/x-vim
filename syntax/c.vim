"====================================================
" Highlight All Function
" http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
" ===================================================
syn match cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
syn match cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
hi cFunction cterm=bold ctermfg=32
"===================================================
" Highlight All Class Name
" ==================================================
syn match cClassName "\<[a-zA-Z_][a-zA-Z_0-9]*\>*\:"me=e-1
hi cClassName cterm=bold ctermfg=28

"====================================================
" Highlight All Math Operator
" ===================================================
syn match cMathOperator display "[-+\*\%=]"
syn match cPointerOperator display "->\|\.\|\:\:"
syn match cCompareOperator display "[!<>]="
syn match cCompareOperator display "=="
" c bit operators
syn match cBinaryOperator display "\(&\||\|\^\|<<\|>>\)=\="
syn match cBinaryOperator display "\~"
syn match cBinaryOperatorError display "\~="
" More c logical operators - highlight in preference to binary
syn match cLogicalOperator display "&&\|||"
syn match cLogicalOperatorError display "\(&&\|||\)="
" more c priority operators -highlight in preference to binary
"syn match cPriorityOpreator display "(\|)\|\[\|\]\|{\|}"

" match operator
hi cMathOperator ctermfg=100
hi cPointerOperator ctermfg=153
hi cCompareOperator ctermfg=41
hi cBinaryOperator ctermfg=6
hi cBinaryOperatorError ctermfg=red
hi cLogicalOperator ctermfg=203
hi cLogicalOperatorError ctermfg=yellow
hi cPriorityOpreator ctermfg=6
" vim: ts=4
