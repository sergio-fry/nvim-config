" :LspInstall ruby


call plug#begin()
Plug 'janko-m/vim-test'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/gv.vim'
Plug 'morhetz/gruvbox'
Plug 'neovim/nvim-lspconfig'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
call plug#end()

colorscheme gruvbox


lua <<EOF
EOF


:nmap <C-p> :FZF<CR>
:nmap <Space>ff :FZF<CR>


nmap <Space>t :TestLast<CR>
nmap <Space>tt :TestLast<CR>
nmap <Space>tn :TestNearest<CR>
nmap <Space>tf :TestFile<CR>
nmap <Space>ts :TestSuite<CR>
nmap <Space>b :BufExplorer<CR>
nmap <Space>bb :Buffers<CR>
nmap <Space>ft :NERDTreeFind<CR>


" Run a given vim command on the results of alt from a given path.
" See usage below.
function! OpenAlternate(path, vim_command)
  let l:alternate = system("alt " . a:path)
  if empty(l:alternate)
    echo "No alternate file for " . a:path . " exists!"
  else
    exec a:vim_command . " " . l:alternate
  endif
endfunction

:command A :call OpenAlternate(expand('%'), ':e')


"Save file after focus lost
:au FocusLost * :wa
:au BufLeave * :wa

" http://vim.wikia.com/wiki/Using_the_mouse_for_Vim_in_an_xterm
set mouse=a


" set keymap=russian-jcukenmac


let g:vim_markdown_folding_disabled = 1

set number
