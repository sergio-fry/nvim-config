nmap <C-p> :Telescope find_files<CR>

nmap <Space>/ :nohlsearch<CR>
nmap <Space>b :BufExplorer<CR>
nmap <Space>fb :Telescope buffers<CR>
nmap <Space>ff :Telescope find_files<CR>
nmap <Space>fs :Telescope live_grep<CR>
nmap <Space>ft :NERDTreeFind<CR>
nmap <Space>fT :NERDTreeClose<CR>
nmap <Space>t :TestLast<CR>
nmap <Space>tf :TestFile<CR>
nmap <Space>tl :TestNearest<CR>
nmap <Space>ts :TestSuite<CR>
nmap <Space>tt :TestLast<CR>
nmap <Space>l :lua vim.lsp.buf.
nmap <Space>lf :lua vim.lsp.buf.format()<CR>
nmap <Space>lr :lua vim.lsp.buf.references()<CR>

:command A :call OpenAlternate(expand('%'), ':e')
