" Vim syntax file
" Language: Courtmap 
" Maintainer: Jonathan Jopp 
" Latest Revision: 03 Feb 2022

if exists("b:current_syntax")
  finish
endif

hi link Text String 
hi link SyntaxElem Operator 
syn match Text "\v[a-zA-Z]+"
syn match SyntaxElem "\v\|"
syn match SyntaxElem "\v\*"
syn match SyntaxElem "\v\{"
syn match SyntaxElem "\v\}"
syn match SyntaxElem "\v\("
syn match SyntaxElem "\v\)"
syn match SyntaxElem "\v\-\>"
