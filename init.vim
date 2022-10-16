
source ~/.config/nvim/plugins.vim


"colorscheme gruvbox
colorscheme twilight256
"colorscheme off


lua <<EOF
EOF



" https://github.com/uptech/alt
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



"Save file after focus lost
:au FocusLost * :wa
:au BufLeave * :wa

" http://vim.wikia.com/wiki/Using_the_mouse_for_Vim_in_an_xterm
set mouse=a


" set keymap=russian-jcukenmac

let g:vim_markdown_folding_disabled = 1

set number
set exrc " exec local .exrc to load project-specific configs

source ~/.config/nvim/lsp.lua
source ~/.config/nvim/shortcuts.vim
source ~/.config/nvim/snippets.vim
