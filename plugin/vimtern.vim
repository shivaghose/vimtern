" Vimtern needs VIM with python support to work. _sigh_ I know.
if !has('python')
    call confirm("VIMTern needs Python to work.")
    finish
endif

" Get the path to the plugin dir by:
" 1. Getting the absolute path of the script
" 2. Resolving all symbolic links
" 3. Getting the folder of the resolved absolute file
let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

if exists('g:vimtern_config_file')
else
    echom "Using default intrn file."
    let g:vimtern_config_file = s:path . "/default.intrn"
endif

let s:vimtern_py = s:path . '/vimtern.py'

" Send messages to the intern:
command! VIMTernDo exe '!python ' s:vimtern_py ' -f' g:vimtern_config_file ' -m <args>'
