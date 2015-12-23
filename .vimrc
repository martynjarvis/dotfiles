" adapted from:
" http://www.derekwyatt.org/vim/the-vimrc-file/the-absolute-bare-minimum/

" Forget being compatible with good ol' vi
set nocompatible

" Python programmer here
set shiftwidth=4 expandtab tabstop=4
set textwidth=79
if v:version >= 703
    set cc=80
endif

" Pathogen
execute pathogen#infect()

" What's a mouse?
set mouse=n

" Highlight what I search for
set hlsearch

" solarized dark
set background=dark
colorscheme solarized

" Get that filetype stuff happening
filetype on
filetype plugin on
filetype indent on

" Turn on that syntax highlighting
syntax on

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Enable spellchecking for Markdown and gitcommit messages
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd FileType gitcommit setlocal spell

" ctags
set tags=~/.tags

" Why is this not a default
set hidden

" row numbers
set number

" Don't update the display while executing macros
set lazyredraw

" At least let yourself know what mode you're in
set showmode

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.  See :help 'wildmenu'
set wildmenu

" Highlight various whitespace characters
set list
set listchars=tab:>=,trail:·

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Let's make it easy to edit this file (mnemonic for the key sequence is
" 'e'dit 'v'imrc)
nmap <silent> ,ev :e $MYVIMRC<cr>

" And to source this file as well (mnemonic for the key sequence is
" 's'ource 'v'imrc)
nmap <silent> ,sv :so $MYVIMRC<cr>

" Line numbers are useful (mnemonic for the key sequence is
" 'l'ine 'n'umbers)
nmap <silent> ,ln :set number<cr>

" relative line numbers are alse useful (mnemonic for the key sequence is
" 'r'elative 'n'umbers)
if v:version >= 703
    nmap <silent> ,rn :set relativenumber<cr>
endif

" Turn Line numbers of (mnemonic for the key sequence is
" 'n'o 'n'umbers)
if v:version >= 703
    nmap <silent> ,nn :set nonumber norelativenumber <cr>
else
    nmap <silent> ,nn :set nonumber <cr>
endif

" Toggle listchars (mnemoic is 'l'ist 'c'hars)
nmap <silent> ,lc :set list! <cr>

" Hide search highlighting (mnemonic for the key sequence is
" 'n'o 'h'highlights)
nmap <silent> ,nh :nohlsearch<cr>

" diff file  (mnemonic for the key sequence is 'diff'!)
nmap <silent> ,df :w !diff % - <cr>

" trim whitespace (mnemonic for the key sequence is
" 't'rim 'w'hitespace)
nmap <silent> ,tw :%s/\s\+$// <cr>

" ctrl-p buffermode
nmap <C-B> :CtrlPBuffer<cr>
