" augroup FileTypeSpecificAutocommands
    " autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
    " autocmd FileType typescript setlocal tabstop=2 softtabstop=2 shiftwidth=2
" augroup END

set background=dark
execute pathogen#infect()
call pathogen#helptags()
let mapleader=" "
syntax on

set nu rnu ts=4 sw=4 si ai
set splitright
set splitbelow
set hlsearch
set incsearch
set cursorline

inoremap {<CR> {<CR>}<Esc>O

nnoremap <Leader>h :noh<CR>
nnoremap <Leader>x ^y$:!<C-r>"<CR>
nnoremap <Leader>t :NERDTreeToggle<CR>
nnoremap <Leader>w :update<CR>
nnoremap <Leader>c :

" Mapas de splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Mapas do FZF
nnoremap <Leader>ff :Files<CR>
nnoremap <Leader>fa :Files ~/<CR>
nnoremap <Leader>fr :Rg<CR>
nnoremap <Leader>fh :History<CR>
nnoremap <Leader>f: :History:<CR>

" Mapas do Git
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gp :Gpush<CR>

nnoremap cp va{Vy<C-o>va{<Esc>pO<Esc>j
nnoremap Q @q

colorscheme gruvbox 
let g:airline_theme='deus'

" If installed using git
set rtp+=~/.fzf
