" This is a intelligent replacer for vim
" 
" version: 0.01
"
" author: Terence Ng <pheotiman@gmail.com>
"
" Last change: 2013 Nov 26
"

function Replace(dest, src, ...)
  if a:0 == 2
    let lnum = a:1
    while lnum <= a:2
      let line = getline(lnum)
      let repl = substitute(line, a:dest, a:src, "g")
      call setline(lnum, repl)
      let lnum = lnum + 1
    endwhile
  endif
  if a:0 == 1
    echohl WarningMsg
    echo "Missing 'lastline' parameter!"
    echohl None
  endif
  if a:0 > 2
    echohl WarningMsg
    echo "Too many parameters!"
    echohl None
  endif
  if a:0 == 0
    let starter = 1
    let lnum = starter
    let ender = line("$")
    echo "starter: " . starter . " ender: " . ender
    while lnum <= ender
      let line = getline(lnum)
      let repl = substitute(line, a:dest, a:src, "g")
      call setline(lnum, repl)
      let lnum = lnum + 1
    endwhile
  endif
endfunction

if !exists(":ReplaceAll")
  command -nargs=* Replace :call Replace(<f-args>)
endif

