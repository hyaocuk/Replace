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
    while lnum <= ender
      let line = getline(lnum)
      let repl = substitute(line, a:dest, a:src, "g")
      call setline(lnum, repl)
      let lnum = lnum + 1
    endwhile
  endif
endfunction

function Position(target)
  let starter = 1
  let lnum = starter
  let ender = line("$")
  let line = getline(lnum)
  let length = strlen(line)
  echohl Title
  echo a:target . " in:"
  echohl None
  while lnum <= ender
    let cur = 0
    let line = getline(lnum)
    while cur <= length
      let result = match(line, a:target, cur)
      let target_length = strlen(a:target)
      if result == -1
	break
      endif
      echohl Title
      echo "    line: " . lnum . ", pos: " . result . " "
      echohl None
      let cur = result + 1
    endwhile
    let lnum = lnum + 1
  endwhile
endfunction

if !exists(":Replace")
  command -nargs=* Replace :call Replace(<f-args>)
endif

if !exists(":Position")
  command -nargs=1 Position :call Position(<f-args>)
endif
