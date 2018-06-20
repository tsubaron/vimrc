""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python map <buffer> F :set foldmethod=indent<cr>

au FileType python inoremap <buffer> $r return 
au FileType python inoremap <buffer> $i import 
au FileType python inoremap <buffer> $p print 
au FileType python inoremap <buffer> $f #--- <esc>a
au FileType python map <buffer> <leader>1 /class 
au FileType python map <buffer> <leader>2 /def 
au FileType python map <buffer> <leader>C ?class 
au FileType python map <buffer> <leader>D ?def 


""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.js setf javascript
au BufNewFile,BufRead *.jsx setf javascript
function! JsSetting()
  set expandtab
  set tabstop=2
  set shiftwidth=2
endfunction
au FileType javascript call JsSetting()
"au FileType javascript call JavaScriptFold()
"au FileType javascript setl fen
"au FileType javascript setl nocindent
"
"au FileType javascript imap <c-t> $log();<esc>hi
"au FileType javascript imap <c-a> alert();<esc>hi
"
"au FileType javascript inoremap <buffer> $r return 
"au FileType javascript inoremap <buffer> $f //--- PH<esc>FP2xi

"function! JavaScriptFold() 
"    setl foldmethod=syntax
"    setl foldlevelstart=1
"    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend
"
"    function! FoldText()
"        return substitute(getline(v:foldstart), '{.*', '{...}', '')
"    endfunction
"    setl foldtext=FoldText()
"endfunction


""""""""""""""""""""""""""""""
" => CoffeeScript section
"""""""""""""""""""""""""""""""
function! CoffeeScriptFold()
    setl foldmethod=indent
    setl foldlevelstart=1
endfunction
au FileType coffee call CoffeeScriptFold()

au FileType gitcommit call setpos('.', [0, 1, 1, 0])

""""""""""""""""""""""""""""""
" => html section
"""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.blade.php setf html
function! HtmlSetting()
  set expandtab
  set tabstop=2
  set shiftwidth=2
  set autoindent
endfunction
au FileType html call HtmlSetting()

""""""""""""""""""""""""""""""
" => css section
"""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.sass setf css
function! CssSetting()
  set expandtab
  set tabstop=2
  set shiftwidth=2
endfunction
au FileType css call CssSetting()

""""""""""""""""""""""""""""""
" => php section
"""""""""""""""""""""""""""""""
au FileType php set expandtab
au FileType php set tabstop=4
au FileType php set shiftwidth=4

""""""""""""""""""""""""""""""
" => c++ section
"""""""""""""""""""""""""""""""
function! CppSetting()
  set expandtab
  set tabstop=2
  set shiftwidth=2
  map <leader>r :QuickRun<cr>
endfunction
au FileType cpp call CppSetting()

""""""""""""""""""""""""""""""
" => c section
"""""""""""""""""""""""""""""""
function! CSetting()
  set expandtab
  set tabstop=2
  set shiftwidth=2
  map <leader>r :QuickRun<cr>
endfunction
au FileType c call CSetting()
