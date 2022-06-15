if exists("g:loaded_blankspace") | finish | endif

let s:save_cpo = &cpo
set cpo&vim

command! Blankspace lua require 'blankspace'.blankspace()

let &cpo = s:save_cpo
unlet s:save_cpo

let g:loaded_blankspace = 1
