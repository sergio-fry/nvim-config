nmap <C-p> :Telescope find_files<CR>

nmap <Space>/ :nohlsearch<CR>
nmap <Space>b :BufExplorer<CR>
nmap <Space>fb :Telescope buffers<CR>
nmap <Space>ff :Telescope find_files<CR>
nmap <Space>fs :Telescope live_grep<CR>
nmap <Space>ft :NERDTreeFind<CR>
nmap <Space>fT :NERDTreeClose<CR>
nmap <Space>fr :e `find . -type f \\| grep rb$ \\| sort --random-sort \\| tail -n 1`<CR>


" run latest test
nmap <Space>t :TestLast<CR>
nmap <Space>tt :TestLast<CR>

" nmap <Space>t :lua require("neotest").run.run_last()<CR>
" nmap <Space>tt :lua require("neotest").run.run_last()<CR>

" run test file
nmap <Space>tf :TestFile<CR>
" nmap <Space>tl :lua require("neotest").run.run(vim.fn.expand("%"))<CR>

" run nearest test
nmap <Space>tl :TestNearest<CR>
" nmap <Space>tl :lua require("neotest").run.run()<CR>

" run test suite
" nmap <Space>ts :TestSuite<CR>

" lua require("neotest").output.open({ enter = true })

nmap <Space>to :lua require("neotest").output.open({ enter = true, auto_close = true })<CR>
nmap <Space>tp :lua require("neotest").summary.open()<CR>



nmap <Space>l :lua vim.lsp.buf.
nmap <Space>lf :lua vim.lsp.buf.format()<CR>
nmap <Space>lr :lua vim.lsp.buf.references()<CR>

nmap <Space>u :URLOpenUnderCursor<CR>

:command A :call OpenAlternate(expand('%'), ':e')
