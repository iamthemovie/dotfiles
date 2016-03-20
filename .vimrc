" Pathogen

call pathogen#infect()
call pathogen#helptags()

" Environment

syntax on
set number "Line numbers
set nocompatible "No compatible for generic support
set encoding=utf-8
set backspace=indent,eol,start "Backspace fix
set history=1000 "History buffer
set visualbell "Flash over sound
set wildmenu 
set wildmode=longest:list,full "Helpful tabbing through menus
set guifont=Monaco:h11
set hidden "Required for CtrlSpace

" Environment Airline

set laststatus=2 "Show the bar
let g:airline#extensions#tabline#enabled = 1

" Environment NerdTree

autocmd StdinReadPre * let s:std_in=1 
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif " No file specified.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "(Stops needing to close NerdTree before quit).

" Environment CtrlSpace
"Our favorite Ctrl+P
nnoremap <silent><C-p> :CtrlSpace O<CR>
let g:CtrlSpaceLoadLastWorkspaceOnStart = 1 
let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
let g:CtrlSpaceSaveWorkspaceOnExit = 1

" Undo Settings


