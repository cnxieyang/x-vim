" "highlight Functions
" syn match cFuntions display "[a-zA-Z_0-9]\{-1,}\s\{-0,}(\{1}"ms=s,me=e-1
" hi def link cFuntions Title
"====================================================
" Highlight All Function
" 高亮函数名称，加粗，颜色使用的是x028_Green4 cterfg为28
"颜色和数值的对应关系见：http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
" ===================================================
syn match cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
syn match cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
hi cFunction cterm=bold ctermfg=32
"===================================================
" Highlight All Class Name
"高亮类名，加粗，颜色为31 x031_DeepSkyBlue3
" ==================================================
syn match cClassName "\<[a-zA-Z_][a-zA-Z_0-9]*\>*\:"me=e-1
hi cClassName cterm=bold ctermfg=28

"====================================================
" Highlight All Math Operator
" 对C语言中关键字的另外的加亮
" ===================================================
" c math operators
syn match cMathOperator display "[-+\*\%=]"
" c opinter operators
syn match cPointerOperator display "->\|\.\|\:\:"
" c logical operators - boolean results
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
hi cMathOperator ctermfg=100       "数学运算符使用了x100_Yellow4
hi cPointerOperator ctermfg=153    "指针运算符使用了x153_LightSkyBlue1
hi cCompareOperator ctermfg=41     "比较运算符使用x041_SpringGreen3
hi cBinaryOperator ctermfg=6       "二元运算符使用蓝色
hi cBinaryOperatorError ctermfg=red
hi cLogicalOperator ctermfg=203     " && ||使用x203_IndianRed1
hi cLogicalOperatorError ctermfg=yellow
hi cPriorityOpreator ctermfg=6      "括号由于有rainbow插件，没有高亮
" vim: ts=8
