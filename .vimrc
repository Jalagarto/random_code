set nobackup                                                                                                                                                                                                                                                                    
set nowritebackup
set noswapfile
set lines=40
set columns=110
set tabstop=4
set softtabstop=4
set smarttab
set number

highlight Normal ctermbg=DarkGray ctermfg=white
"highlight Comment ctermfg=Gray
highlight Constant ctermbg=Blue
" highlight Normal ctermbg=Black
highlight NonText ctermbg=Black
highlight Special ctermbg=DarkMagenta
highlight Cursor ctermbg=Green
" syntax enable

" set tabs to have 4 spaces
set ts=4
" indent when moving to the next line while writing code
set autoindent
" expand tabs into spaces
set expandtab
" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4
" show a visual line under the cursor's current line
set cursorline
" show the matching part of the pair for [] {} and ()
set showmatch
" enable all Python syntax highlighting features
" let python_highlight_all = 1

" syntax on

" syntax highlighting
highlight Normal ctermbg=black ctermfg=white
highlight Comment ctermfg=Gray
highlight Constant ctermfg=Blue
" highlight Normal ctermbg=Black
highlight NonText ctermbg=Black
highlight Special ctermbg=DarkMagenta
highlight Cursor ctermbg=Green
highlight Identifier ctermfg=Green
highlight Statement cterm=bold ctermfg=Yellow
highlight PreProc ctermfg=Red
highlight Type ctermfg=Blue
highlight Underlined ctermfg=Blue
highlight Special ctermfg=Red
highlight Error ctermfg=LightBlue
highlight String ctermfg=darkgreen
"highlight Keyword ctermfg=darkyellow
highlight Function cterm= bold ctermfg=Blue
highlight Number ctermfg=white
" syntax enable
