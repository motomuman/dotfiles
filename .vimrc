set encoding=utf-8
set number "show line number
set autoindent "keep previous line indent
set smartindent "consider last char of previous line
"set expandtab

"===============================================
"" Display configuration
"===============================================

"highlight current line
set cursorline 
"underline
highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE

"===============================================
"" Keymap configuration
"===============================================

noremap <Space>h  ^
noremap <Space>l  $

"===============================================
"" Search configuration
"===============================================

set ignorecase "ignore Case"
set smartcase "(with ignorecase) if you type Cap letter, search Cap letter
set incsearch "search with everyinput
set hlsearch "hilight all word which match the query set showmatch "hilight corresponding brackets

"===============================================
"" Python
"===============================================
set pastetoggle=<C-E>
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4

"===============================================
"" Other  configuration
"===============================================

set nojoinspaces "J command (join line) without space
set history=2000 "search history number

if has('persistent_undo')
  set undodir=~/.vim/undo
  set undofile
endif

if has("autocmd")
	"remember previous cursor position
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

"===============================================
"" Template configuration
"===============================================

autocmd BufNewFile *.cpp 0r $HOME/.vim/template/cpp.txt

"===============================================
" vim-plug
"===============================================

call plug#begin('~/.vim/plugged')
	Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

"===============================================
"" Color configuration
"===============================================

syntax on
let g:dracula_colorterm = 0
let g:dracula_italic = 0
colorscheme dracula
